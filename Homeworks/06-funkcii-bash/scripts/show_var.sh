#!/bin/bash
# Задание 3: вывод значения переменной по её имени через eval (до Ctrl + D)

show_var() {
    local name="$1"
    eval "echo \"$name = \$$name\""
}

echo "Enter variable names (Ctrl+D to exit):"
while read -r varname; do
    show_var "$varname"
done
echo "End of input (EOF)."
