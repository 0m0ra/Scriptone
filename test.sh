#!/bin/bash
input_file=input.txt
output_file=output.txt
word="aboba"
chmod +x ./homework.sh
./homework.sh -i $input_file -o $output_file -d $word > /dev/null

echo "Тест аргументов"

if [[ -f $input_file ]] && [[ -f $output_file ]] && [[ -n $word ]]
then
    echo "Тест №1 пройден!"
else
    echo "Тест №1 провален !"
    echo "Input: -i $input_file -o $output_file -d $word"
    exit 1
fi


b=`cat $output_file`
expected="Аргументы скрипта: 5"
if [[ $b == $expected ]]
then 
    echo "Тест №2 пройден"
else
    echo "Тест №2 провален"
    echo "Ожидалось: $expected"
    echo "Вывод: $b"
    exit 1
fi