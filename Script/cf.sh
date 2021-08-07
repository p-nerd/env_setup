if [[ $1 == status ]]
then
    if [[ $4 == firefox ]]
    then
        firefox https://codeforces.com/problemset/status/$3/problem/$2\?friends\=on &
    else
        google-chrome https://codeforces.com/problemset/status/$3/problem/$2\?friends\=on &
    fi
elif [[ $1 == open ]]
then
    if [[ $3 == firefox ]]
    then
        firefox https://github.com/shihab4t/$2 &
    else
        google-chrome https://github.com/shihab4t/$2 &
    fi
fi