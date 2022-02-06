#! /bin/zsh

script_name=smt

main_help() {
    echo """
        SM's Tools

        $script_name [sub-commands]

        sub-commands:
        -------------
        cp          Competitive Programming related functinality
        git         Git related functioality
        help        For help
    """
}

cp_help() {
        echo """
        Competitive Programming related functinality

        $script_name $1 [sub-commends]

        sub-commands:
        -------------
        <file_name>                                         Create file with $HOME/.smt/template.cpp
        update <template_name>                              update template in $HOME/.smt/template.cpp
        run <file_name>                                     Run C/C++ code with runtime info
        compile <file_name>                                 Compile C/C++ with log details
        cfstatus  <numaric seriels> <alfabic seriels>       Problem submission status
        help                      For help
        """
}

git_help() {
        echo """
        Git related functionality

        $script_name $1 [sub-commands]

        sub-commands:
        -------------
        all <commit massess>    git add . && git commit -m \"commit massess\" && git push 
        help                    For help
        """
}


if [[ $1 == help || $BASH_ARGC == 0 ]]
then
    main_help
elif [[ $1 == cp ]]
then
    if [[ $2 == help || $2 == "" ]]
    then 
        cp_help
    elif [[ $2 == run ]]
    then
        g++ $3 && time ./a.out
    elif [[ $2 == compile ]]
    then
        g++ -v $3
    elif [[ $2 == update ]]
    then
        cp -v $3 $HOME/.smt/template.cpp
    elif [[ $2 == ac ]]
    then
        current_date=$(date '+%r (%Z)')
        echo "// Accepted: $current_date" >> $3
    elif [[ $2 == cfstatus ]]
    then
        google-chrome "https://codeforces.com/problemset/status/$3/problem/$4?friends=on"
    else
        file_name=$2
        file_name=${file_name// /_}
        file_name=${file_name//._/.}
        if [[ $3 != "" ]]
        then
            file_name="$file_name.$3"
        fi
        
        echo "Creating the $file_name file... Done."
        cp ~/.smt/template.cpp $file_name
        current_date=$(date '+%A, %B %d, %Y | %r (%Z)')
        echo "// $current_date" >> $file_name
        # echo "// Problem Link: $3" >> $2
        echo "Done! let's play"
        code $file_name
    fi
elif [[ $1 == git ]]
then 
    browser="google-chrome"
    base_url="https://github.com/shihab4t"
    email="shihab4t@gmail.com"
    name="Shihab Mahamud"
    if [[ $2 == help || $2 == "" ]]
    then
        git_help
    elif [[ $2 == all ]]
    then
        git add .
        if [ "$3" != "" ]
        then
            git commit -m "$3"
        else
            git commit -m Updates
        fi
        git push
    else 
        git_help
    fi
else
    main_help
fi
