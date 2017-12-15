#!/bin/sh

version="0.2.1b"

this="${0##*/}"

usage="USAGE: ${this} [--switches] <assembly file> <output> [output] [... [outputN]]
       ${this} --help"

help="$this for disassembled SEGA Mega Drive / Genesis Phantasy Star games.
Version ${version}
By zucca@kahvipannu.com
License: BSD

Major dependencies are
    - asl, the macro assembler
    - gawk 4.1.1 or newer for inline patching
    - gcc only for compiling the p2bin
    - BSDiff, Xdelta, bdiff, ips.py for support of patch file creation
    - md5sum, sha1sum, sha244sum, sha256sum, sha384sum and sha512sum to be able to create checksums of the compiled binary 

Note that this script may reside anywhere in the filesystem.
Also running this script outside of the directory where the assembly is allowed.

$usage

Where output may be *.bin *.bsdiff *.xdelta *.bdiff *.md5 *.sha1 *.sha244 *.sha256 *.sha384 *.sha512 ...

Switches:

    Location of the Macro assembler AS.
    --asl <asl executable>

    Location of p2bin.
    --p2bin <p2bin executable>

    See README.adoc 'Known limitations' -section for this.
    --fixheader <fixheader executable>

    Specify locations of helper programs
    --bsdiff --xdelta --bdiff --ips-py

    Does not delete temporary files.
    --keep-temp
    (${this} still keeps temporary files in some cases where process has failed.)
"

# Sets the name of the assembly log file if not set from the environment.
: ${ASlog:="AS.log"}


msg() { echo -e "$*"; }

warn() {
    echo -e "$*" 1>&2
}

# Maybe overkill for such a simple script
# but we have now a function for exiting.
errexit() {
    if echo "$1" | grep -E '^[0-9]+$' > /dev/null
    then
	# First argument was a number. We use it as an exit code.
        ec="$1"
        shift
    fi
    warn "$*"
    exit "${ec:=1}"
}

check_dep() {
    if [ -x "$(which "$1" 2> /dev/null)" ]
    then
        return 0
    elif [ "$2" = "die" ]
    then
        errexit 127 "Aborting: '$1' cannot be found or isn't an executable."
    else
        return 127
    fi
}

find_one() {
    one="$(find "${includedir}" -type f -iname "$1")"
    if  [ "$(echo "$one" | wc -l)" -gt 1 ]
    then
        echo -n "$one"
        return 1
    elif [ "$one" ]
    then
        echo -n "$one"
    else
        return 127
    fi
}

ask_download() {
    # $1 = dest, $2 = uri
    bn="${1##*/}"
    dn="${1%/*}"
    msg "Didn't found '${bn}'.\nProceed with downloading ${bn} and installing it into '${dn}'? [Y/n]"
    read answer && case "$answer" in
        [Yy]|[Yy][Ee][Ss])
            wget -nv -O "$1" "$2" || { warn "Downloading of "$bn" failed."; return 1; }
        ;;
        [Nn][Oo]?)
            msg "Skipped installing of $bn by user request."
            return 1
        ;;
        *)
            [ "$answer" == "" ] && wget -O "$1" "$2" || { warn "Downloading of "$bn" failed."; return 1; }
        ;;
    esac || return 1
}

# Path patching using awk.
# While we're at it replace paths with absolute ones.
# Why? I didn't find any simmple way to tell asl
# from which diretory to search for includes,
# because there are many of them at leas in case of PSII
# and I just cannot give a root directory where all
# the directories reside where the includes are.
path_patch() {
    # We are using gawk. Would maybe be better to use POSIX awk instead...
    # Although gsub is gawk extension. :(
    gawk -v "includedir=${includedir}" '{if (/b?include\s+"/) { sub("\"","\"" includedir "/"); gsub("\\\\","/") } print }' "$@"
}

# Creates the final binary into the temp directory
build_bin() {
    if ! [ -e "$temp_bin" ]
    then
        "$p2bin" "$temp_p" "$temp_bin" "$temp_h" > /dev/null \
            && msg "Succesfully created the binary." \
            || errexit "p2bin failed to create the binary. Temporary files left into '${workdir}'"
        fix_bin_header "$temp_bin"
    else
        # We already have the binary. Return succesfully.
        return 0
    fi
}

setup_helper() {
    # $1 = destination, $2 = source file, $3 = source uri
    if helper_compiler="$(which gcc 2> /dev/null)" || helper_compiler="$(which clang 2> /dev/null)"
    then
        helper_source="$(find_one "$2")"
        status="$?"
        if [ "$status" -eq 0 ]
        then
            if "$helper_compiler" -O3 -w -o "${helperdir}/$1" "$helper_source"
            then
                msg "$1 compiled..."
            else
                warn "Compiling $1 failed."
                return 1
            fi
        elif [ "$status" -eq 1 ]
        then # Multiple choices!
            warn "Multiple sources for ${1} found:\n${helper_source}"
            return 1
        elif [ "$3" ]
        then                                                      # Recursion!
            ask_download "${helperdir}/${2}" "$3" && setup_helper "$1" "$2" || return 1
        else
            warn "Didn't find '${2}', the source file to compile ${1}."
            return 127
        fi
    else
        warn "Couldn't find gcc or clang. Cannot compile ${2}."
        return 127
    fi
}

# Be careful. fix_bin_header is this function and fixheader is the binary.
fix_bin_header() {
    # Choose if we want to fix the header.
    if [ -x "${fixheader:=${helperdir}/fixheader}" ]
    then
        "$fixheader" "$1" && msg "Fixed the header..." || warn "Header fixing failed!"
    else
         setup_helper fixheader{,.cpp} "https://raw.githubusercontent.com/sonicretro/s2disasm/ab771f939679b27398d3bd45c3c390508b0d0a33/build_source/fixheader.cpp" \
             && fix_bin_header "$1" \
             || { rm -r "$workdir"; errexit 1 "Unable to set up the fixheader helper. You might need to do it by yourself. Aborting..."; }
    fi
}

setup_p2bin() {
    # Find source and compile the p2bin program if needed.
    if [ ! -e "${p2bin:=${helperdir}/p2bin}" ]
    then
        setup_helper p2bin '*p2bin.c' || { rm -r "${workdir}"; errexit "Unable to create p2bin. Aborting..."; }
    fi
}

### Patch creation functions
# Every function takes <oldfile> <newfile> <patchfile>

# Perhaps the most efficient binary diff algo there is.
create_bsdiff() {
    check_dep "${bsdiff:="bsdiff"}" die && "$bsdiff" "$1" "$2" "$3" && msg "BSDiff created to '$3'..." || warn "BSDiff failed."
    }

# Xdelta is one of the most common binary diff programs.
create_xdelta() {
    check_dep "${xdelta:="xdelta3"}" die && "$xdelta" -f -e -S djw -9 -s "$1" "$2" "$3"  && msg "Xdelta created to '$3'..." || warn "Xdelta failed."
}

# BDelta. https://github.com/jjwhitney/BDelta
create_bdelta() {
    check_dep "${bdelta:="bdelta"}" die && "$bdelta" "$1" "$2" "$3" && msg "bdiff created to '$3'..." || warn "bdelta failed."
}

# IPS is a common format too. romhacking.net users might want to use this.
create_ips() {
    if check_dep python3
    then
        [ "$ips_py" ] || ips_py="$(find_one 'ips.py')"
        status="$?"
        if [ "$status" -eq 0 ]
        then
            python3 "$ips_py" create "$1" "$2" "$3" > /dev/null &&  msg "ips created to '$3'..." || warn "ips failed"
        elif [ "$status" -eq 127 ]
        then
            ask_download "${helperdir}/ips.py" https://raw.githubusercontent.com/fbeaudet/ips.py/1fcf07a03111bac8ede9493f414765d8e4e32cfe/ips.py && \
            ips_py="${helperdir}/ips.py" && python3 "$ips_py" create "$1" "$2" "$3" > /dev/null &&  msg "ips created to '$3'..." || warn "ips failed."
        else
             warn "ips Creation failed. There seems to be many possible sources for ips.py..."
        fi
    else
        warn "python3 missing. Skipping ips patch creation."
    fi
}

### Go trough CLI switches.
while [ "${1:0:1}" = "-" ]
do
    case "$1" in
        --asl)
            [ "$2" ] && check_dep "$2" die
            asl="$2"
            shift
        ;;
        --p2bin)
            [ "$2" ] && check_dep "$2" die
            p2bin="$2"
            shift
        ;;
        --fixheader)
            [ "$2" ] && check_dep "$2" die
            fixheader="$2"
            shift
        ;;
        --bsdiff)
            [ "$2" ] && check_dep "$2" die
            bsdiff="$2"
            shift
        ;;
        --xdelta)
            [ "$2" ] && check_dep "$2" die
            xdelta="$2"
            shift
        ;;
        --bdiff)
            [ "$2" ] && check_dep "$2" die
            bdiff="$2"
            shift
        ;;
        --ips-py|--ipspy)
            [ "$2" ] && check_dep "$2" die
            ips_py="$2"
            shift
        ;;
        --orig-bin|--original)
            [ -e "$2" ] && orig_bin="$2" || errexit "No such file '${2}'."
            shift
        ;;
        --keep-temp)
            keeptemp=1
        ;;
        --help)
            echo "${help}"
            exit 0
        ;;
        --)
            shift
            break
        ;;
        *)
            warn "Not a _slightest_ clue what to do with that $1 switch of yours."
            errexit "Tip. Use '--' to break switch searching. Exiting..."
        ;;
    esac
    shift
done

# Test arguments and existence of provided assembly file.
[ "$1" ] || errexit "${usage}"
if [ ! "$2" ]
then
    errexit "No output file(s) specified."
fi

[ -e "$1" ] || errexit "No such file: $1"

workdir="$(mktemp -td AS_tmp_XXXXXX)"

# Set include dir to the directory where the assembly file is in.
includedir="$(readlink -f "$1")"
includedir="${includedir%/*}"
helperdir="${includedir}/linux_helpers"
[ ! -e "$helperdir" ] && mkdir "$helperdir"

temp_log="${workdir}/${ASlog##*/}"
temp_p="${workdir}/out.p"
temp_h="${workdir}/out.h"
temp_bin="${workdir}/out.bin"

# Guess the location of original binary (for patches) if not set already.
# So by default it's the same as the main assembly file with extension changed to 'bin'.
: ${orig_bin:="${1%.*}original.bin"}

baseasm="${1##*/}"
base="${baseasm%.*}"
asmfile="${workdir}/${baseasm}"

setup_p2bin

# Patch and compile the assembly.
path_patch "$1" > "$asmfile" && msg "Path patch applied..." || errexit "Patching failed. '$tempdir' -directory is left undeleted."
check_dep "${asl:="asl"}" die
if "${asl}" -xx -c -A -l -shareout "$temp_h" -o "$temp_p" "$asmfile" > "$temp_log" 2>&1
then
    msg "Source compiled..."
else
    errexit "Source compiling failed. Temporary files are left intact inside '${workdir}' -directory."
fi

# Combine all the files to form the binary
build_bin

shift
# Now we have only the output files left on the command line.
# Let's roll!

# Create sums:
msg "Checksums for the binary: "
for hash in md5 sha{1,224,256,384,512}
do
    if check_dep "${hash}sum"
    then
        msg "${hash} - $("${hash}sum" -b "$temp_bin" | cut -f 1 -d ' ' | tee "${workdir}/${hash}")"
    fi
done

while [ "$1" ]
do
    ext="${1##*.}" # Filename extension
    # At least busybox ash doesn't support <<< redirection. That's why the echo.
    case "$(echo "$ext" | tr '[:upper:]' '[:lower:]')" in # lovercase
        bin)
            out_bin="$1"
        ;;
        bsdiff|xdelta|bdiff|ips)
            if [ -e "$orig_bin" ]
            then
                "create_${ext}" "$orig_bin" "$temp_bin" "$1"
            else
                warn "Can't create $ext patch without a binary to compare to. Maybe use '--orig-bin'?"
            fi
        ;;
        md5|sha1|sha224|sha256|sha384|sha512)
            if [ -f "${workdir}/${ext}" ]
            then
                echo "$(cat "${workdir}/${ext}") *${base}.bin" > "$1"
                msg "${ext} checksum of the binary created to '$1'..."
            else
                warn "${ext} failed. Maybe you're missing ${ext} command line utility?" 
            fi
        ;;
        *)
            warn "File type on '${ext}' is unknown. Skipping..."
        ;;
    esac
shift
done

[ "$out_bin" ] && mv "$temp_bin" "$out_bin" && msg "Binary is located at '${out_bin}'."

[ "$keeptemp" ] && msg "Temp files left into '${workdir}'" || rm -r "$workdir"
