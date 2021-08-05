#!/bin/bash

# Print Help `$cpa --help`
if [[ $1 == help ]]
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
elif [[ $1 == run ]] # worked
then
    g++ $2 \
    && ./a.exe

# Update Template 
elif [[ $1 == update ]] # worked
then
    # Update Contests Template `$ cpa update <template.cpp>`
    echo "Updating the $HOME/.cpa/template.cpp into $2"
    cp $2 $HOME/.cpa/template.cpp
    echo "Done!"

elif [[ $1 == ac ]]
then
    current_date=$(date '+%r (%Z)')
    echo "// Accepted: $current_date" >> $2

# Create C/C++ File with Contests Boilerplate Code `$ cpa <filename.cpp>`
else # worked
    echo "Creating the $1 file... Done."
    cp ~/.cpa/template.cpp $1
    current_date=$(date '+%A, %B %d, %Y | %r (%Z)')
    echo "// $current_date" >> $1
    # echo "// Problem Link: $3" >> $2
    echo "Done! let's play"
    code $1
fi
