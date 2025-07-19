#!/bin/bash

declare -a cache  # Кэш для чисел Фибоначчи

# Рекурсивная функция с мемоизацией
fib() {
    if (( $1 <= 1 )); then
        echo $1
    else
        echo $(( $(fib $(($1-1))) + $(fib $(($1-2))) ))
    fi
}

read -p "Input n: " count_num
for i in $(seq 0 $count_num); do
    fib $i
done
 
# Проверка ввода
if [[ $# -eq 0 ]]; then
    echo "Использование: $0 <количество чисел>"
    exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Ошибка: введите целое число"
    exit 1
fi