#!/bin/bash

# Рекурсивная функция вычисления n-го числа Фибоначчи
fib() {
    local n=$1
    if (( n <= 1 )); then
        echo $n
    else
        echo $(( $(fib $((n-1))) + $(fib $((n-2))) ))
    fi
}

# Функция для вывода ряда Фибоначчи
print_fibonacci() {
    local n=$1
    echo "Ряд Фибоначчи из $n чисел:"
    for (( i=0; i<n; i++ )); do
        echo -n "$(fib $i) "
    done
    echo
}

# Запрос ввода от пользователя
read -p "Введите количество чисел Фибоначчи: " n

# Проверка ввода
if ! [[ "$n" =~ ^[0-9]+$ ]] || (( n < 1 )); then
    echo "Ошибка: введите целое число больше 0!"
    exit 1
fi

print_fibonacci "$n"