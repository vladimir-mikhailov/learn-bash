# Создать скрипт ownersort.sh, который в заданной папке копирует файлы в директории,
# названные по имени владельца каждого файла.
# Учтите, что файл должен принадлежать соответствующему владельцу.

#!/bin/bash

for file in $1/*; do
    if [ -f $file ]; then
        owner=$(stat -c %U $file)
        if [ ! -d $owner ]; then
            mkdir -v $owner
        fi
        sudo cp -avp $file $owner
    fi
done
