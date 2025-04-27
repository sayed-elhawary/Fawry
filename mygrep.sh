#!/bin/bash

show_help() {
    echo "Usage: ./mygrep.sh [options] <word> <filename>"
    echo ""
    echo "Options:"
    echo "  -n     Show line numbers"
    echo "  -v     Invert match (show lines that do NOT contain the word)"
    echo "  --help Show this help message"
}

if [[ "$1" == "--help" ]]; then
    show_help
    exit 0
fi

if [[ "$1" == "-" ]]; then
    echo "Error: Missing option after dash (-)"
    show_help
    exit 1
fi

show_line_numbers=false
invert_match=false

while getopts ":nv" opt; do
    case $opt in
        n) show_line_numbers=true ;;
        v) invert_match=true ;;
        \?) echo "Unknown option: -$OPTARG"; show_help; exit 1 ;;
    esac
done

shift $((OPTIND -1))

if [[ $# -lt 2 ]]; then
    echo "Error: Please provide both the search word and the filename."
    exit 1
fi

pattern="$1"
filename="$2"

if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' does not exist!"
    exit 1
fi

cmd="grep -i"

$invert_match && cmd+=" -v"
$show_line_numbers && cmd+=" -n"

$cmd "$pattern" "$filename"

