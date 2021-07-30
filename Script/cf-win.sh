#! /bin/bash

if [[ $1 == status ]]
then
    start chrome  https://codeforces.com/problemset/status?my=on &
else
    start chrome codeforces.com
fi
