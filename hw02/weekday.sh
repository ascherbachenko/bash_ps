#!/bin/bash
echo "Привет, какой сегодня день недели?"
read day
echo "Уже $day"
echo "Какое сегодня число?"
read number
echo "Не думал что $day будет $number числа"
date_week=$(date)
echo "Я считаю что сегодня $date_week"