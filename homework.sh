#!/bin/bash

#Скрипт, принимает на вход названия файла входных данных и файла вывода как ключевые аргументы -i и -o соответственно.
#Скрипт на языке sh который  считает количество вхождений слова в файле входных данных в зависимости от третьего аргумента, который это специфицирует. 
#Этот аргумент принимается  как ключевой аргумент -d. Ответ направляется в файл вывод

cnt=0
while [[ -n $1 ]]
do
  case $1 in
      -i) input_file="$2"
      shift;;
      -o) output_file="$2"
      shift;;
      -d) word="$2"
      shift;;
  esac
  shift
done


while read str
do
  if [[ $str == $word ]]
  then
  cnt=$(($cnt+1))
  fi
done < $input_file
echo "Аргументы скрипта: $cnt" > output.txt


