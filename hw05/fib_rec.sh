#!/bin/bash

# Рекурсивная функция вычисления n-го числа Фибоначчи
fib() {
    read -p "Введите количество чисел Фибоначчи: " num
    local n=$num
    if (( n <= 1 )); then
        echo $n
    else
        echo $(( $(fib $((n-1))) + $(fib $((n-2))) ))
    fi

    echo "Ряд Фибоначчи из $num чисел:"
    for (( i=0; i<num; i++ )); do
        echo -n "$(fib $i) "
    done
}

# Проверка ввода
if ! [[ "$n" =~ ^[0-9]+$ ]] || (( n < 1 )); then
    echo "Ошибка: введите целое число больше 0!"
    exit 1
fi

if [ $n -le 3 ]; then 
    echo "Number more 3s"
else
    print_fibonacci "$n"
fi