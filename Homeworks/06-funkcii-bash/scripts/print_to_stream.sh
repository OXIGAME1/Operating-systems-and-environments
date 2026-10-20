#!/bin/bash
# Задание 1: вывод текста в заданный поток (stdout, stderr или файл)

print_to_stream() {
    local text="$1"
    local destination="$2"
    case "$destination" in
        "stdout") echo "$text" ;;
        "stderr") echo "$text" >&2 ;;
        *)        echo "$text" >> "$destination" ;;
    esac
}

print_to_stream "Hello, stdout" stdout
print_to_stream "Hello, stderr" stderr
print_to_stream "Hello, file" output.txt
