elif [[ $1 == cf ]]
then
    if [[ $2 == status ]]
    then
        if [[ $5 == firefox ]]
        then
            firefox https://codeforces.com/problemset/status/$4/problem/$3\?friends\=on &
        else
            google-chrome https://codeforces.com/problemset/status/$4/problem/$3\?friends\=on &
        fi
    fi

elif [[ $1 == gh ]]
then
    if [[ $2 == open ]]
    then
        if [[ $4 == firefox ]]
        then
            firefox https://github.com/shihab4t/$3 &
        else
            google-chrome https://github.com/shihab4t/$3 &
        fi
    fi