#!/bin/bash

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

if [ $n -le 3 ]; then
        echo "Number is wrong"
else
        print_fibonacci $n
fi