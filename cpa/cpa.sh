#!/bin/bash

# Print Help `$cpa --help`
if [[ $1 == help || $BASH_ARGC == 0 ]]
then 
    echo "cpa is Competitive Programming automation cli script"
    echo
    echo "Usage:"
    echo "  cpa [command] [command]"
    echo
    echo "Available Commands:"
    echo "  <file_name>               Create file with template"
    echo "  file <file_name>          Create file with file-template"
    echo "  update <template_name>    update template"
    echo "  run <file_name>           Run C/C++ code"
    echo "  cf                        CodeForces Commands"
    echo "  help                      For help"

# Run C/C++ Code with One Command `$ cpa run <code.cpp>`
elif [[ $1 == run ]]
then
    g++ $2 \
    && ./a.out

# Update Template 
elif [[ $1 == update ]]
then
    # Update Contests Template `$ cpa update <template.cpp>`
    echo "Updating the $HOME/.cpa/template.cpp into $2"
    cp $2 $HOME/.cpa/template.cpp
    echo "Done!"

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

elif [[ $1 == ac ]]
then
    current_date=$(date '+%r (%Z)')
    echo "// Accepted: $current_date" >> $2
    code $2

# Create C/C++ File with Contests Boilerplate Code `$ cpa <filename.cpp>`
else
    echo "Creating the $1 file... Done."
    cp ~/.cpa/template.cpp $1
    current_date=$(date '+%A, %B %d, %Y | %r (%Z)')
    echo "// $current_date" >> $1
    # echo "// Problem Link: $3" >> $2
    echo "Done! let's play"
    code $1
fi
