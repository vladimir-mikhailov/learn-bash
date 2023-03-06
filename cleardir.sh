# Написать скрипт очистки директорий. На вход принимает путь к директории.
# Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup.
# Если директории нет, то выводит ошибку.

#!/bin/bash

if [ -d $1 ]
    then
        for ext in {.bak,.tmp,.backup}
        do
            if [ -e $1/*$ext ]
                then rm -v $1/*$ext
            fi
        done
        echo "Directory '$1' has been cleaned."
    else
        echo "Soryan, directory '$1' doesn't exist."
        exit 2
fi
