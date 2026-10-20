#!/bin/bash
# Задание 2: вывод информации о системе по названию параметра

sysinfo() {
    local param="$1"
    case "$param" in
        "pwd")     pwd ;;
        "user")    whoami ;;
        "version") uname -r ;;
        "os")      . /etc/os-release && echo "$PRETTY_NAME" ;;
        "host")    hostname ;;
        "date")    date ;;
        "uptime")  uptime -p ;;
        *)         echo "Unknown parameter: $param" >&2
                   echo "Available: pwd user version os host date uptime" >&2
                   return 1 ;;
    esac
}

sysinfo pwd
sysinfo user
sysinfo version
sysinfo os
sysinfo host
sysinfo date
sysinfo uptime
sysinfo foo
