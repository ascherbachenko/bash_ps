#!/bin/bash

declare -a cache  # Кэш для чисел Фибоначчи

# Рекурсивная функция с мемоизацией
fib_memo() {
    local n=$1
    if [[ -n "${cache[n]}" ]]; then
        echo "${cache[n]}"
        return
    fi

    if (( n <= 1 )); then
        cache[n]=$n
    else
        cache[n]=$(( $(fib_memo $((n-1))) + $(fib_memo $((n-2))) ))
    fi
    echo "${cache[n]}"
}

# Вывод ряда Фибоначчи
print_fibonacci() {
    local n=$1
    for (( i=0; i<n; i++ )); do
        echo -n "$(fib_memo $i) "
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

print_fibonacci "$1"