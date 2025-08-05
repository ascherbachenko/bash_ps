#!/bin/bash
fibonacci() {
    local n=$1
    local a=0
    local b=1
    local next

    echo "Ряд Фибоначчи до $n чисел:"

    for (( i=0; i<n; i++ )); do
        if (( i <= 1 )); then
            next=$i
        else
            next=$((a + b))
            a=$b
            b=$next
        fi
        echo -n "$next "
    done
    echo
}

# Проверка ввода
if [[ $# -eq 0 ]]; then
    echo "Использование: $0 <количество чисел>"
    exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Ошибка: введите целое число"
    exit 1
fi

fibonacci "$1"