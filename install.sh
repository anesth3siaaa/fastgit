#!/bin/bash

chmod +x fastgit

if mv fastgit /usr/local/bin/; then
    echo "You're now the proud owner of a fastgit copy."
else
    echo -e "\e[31mSomeone forgot sudo.\e[0m"
    exit 1
fi