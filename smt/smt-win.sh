#! /bin/bash

script_name=smt

main_help() {
    echo """
        SM's Tools

        $script_name [sub-commands]

        sub-commands:
        -------------
        cp          Competitive Programming related functinality
        java        Java related functionality
        git         Git related functioality
        cf          CodeForces releted functionality
        help        For help
    """
}

cp_help() {
        echo """
        Competitive Programming related functinality

        $script_name $1 [sub-commends]

        sub-commands:
        -------------
        <file_name>               Create file with $HOME/.smt/template.cpp
        update <template_name>    update template in $HOME/.smt/template.cpp
        run <file_name>           Run C/C++ code with runtime info
        compile <file_name>       Compile C/C++ with log details
        help                      For help
        """
}

java_help() {
        echo """
        Java related functionalty

        $script_name $1  [sub-commands]

        sub-commands:
        -------------
        extract-jdk <jdk archrive> <jdk name>   Extract jdk in $jdks_path
        env-setup <installed jdk name>          Setup java enviroment in system
        version                                 See $jdks_path list and java, javac, jshell version
        remove-jdk <jdk name>                   Remove jdk for $jdks_path
        run <java file name>                    Run java file directly
        help                                    For help
        """
}

git_help() {
        echo """
        Git related functionality

        $script_name $1 [sub-commands]

        sub-commands:
        -------------
        all <commit massess>    git add . && git commit -m \"commit massess\" && git push 
        browse <repo name>      Open repo in browser
        setup                   Install git, gh, vim and configure git, gh                  
        help                    For help
        """
}

cf_help() {
        echo """
        CoderForces related functionality

        $script_name $1 [sub-commands]

        sub-commands:
        -------------
        status <numaric seriels> <alfabic seriels>        Problem submission status
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
        g++ $3 && time ./a.exe
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
        code $3
    else
        file_name=$2
        file_name=${file_name// /_}
        file_name=${file_name//.-/.}
        
        echo "Creating the $file_name file... Done."
        cp ~/.smt/template.cpp $file_name
        current_date=$(date '+%A, %B %d, %Y | %r (%Z)')
        echo "// $current_date" >> $file_name
        # echo "// Problem Link: $3" >> $2
        echo "Done! let's play"
        code $file_name
    fi

elif [[ $1 == java ]]
then
    jdks_path=/c/Installed/JVM
    if [[ $2 == help || $2 == "" ]]
    then
        java_help
    elif [[ $2 == extract-jdk ]]
    then
        sudo mkdir -v $jdks_path/INTERMEDIATE-STAGE
        sudo tar -xvf $3 -C $jdks_path/INTERMEDIATE-STAGE
        sudo mv -v $jdks_path/INTERMEDIATE-STAGE/* $jdks_path/$4
        sudo rm -vrf $jdks_path/INTERMEDIATE-STAGE
    elif [[ $2 == env-setup ]]
    then
        if [[ -f /usr/bin/java ]] 
        then
            sudo rm -vrf /usr/bin/java
        fi
        if [[ -f /usr/bin/javac ]]
        then
            sudo rm -vrf /usr/bin/javac
        fi
        if [[ -f /usr/bin/jshell ]]
        then 
            sudo rm -vrf /usr/bin/jshell
        fi
        sudo ln -vs $jdks_path/$3/bin/java /usr/bin/java
        sudo ln -vs $jdks_path/$3/bin/javac /usr/bin/javac
        sudo ln -vs $jdks_path/$3/bin/jshell /usr/bin/jshell
    elif [[ $2 == version ]]
    then 
        echo "$ ls -la $jdks_path"
        ls -la $jdks_path
        echo
        echo "$ java --version"
        java --version
        echo
        echo "$ javac --version"
        javac --version
        echo
        echo "$ jshell --version"
        jshell --version
    elif [[ $2 == remove-jdk ]]
    then
        sudo rm -vrf $jdks_path/$3
    elif [[ $2 == run ]]
    then
        java $3
    else 
        java_help
    fi

elif [[ $1 == git ]]
then 
    browser="start chrome"
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

    elif [[ $2 == browse ]]
    then
        $browser $base_url/$3
    elif [[ $2 == setup ]]
    then
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
        sudo apt-add-repository https://cli.github.com/packages
        sudo apt update
        sudo apt install git gh vim
        git config --global user.email $email
        git config --global user.name $name
        git config --global core.editor "vim"
        gh auth login
    else 
        git_help
    fi
elif [[ $1 == cf ]]
then
    browser="start chrome"
    if [[ $2 == help || $2 == "" ]]
    then
        cf_help
    elif [[ $2 == status ]]
    then
        $browser https://codeforces.com/problemset/status/$3/problem/$4?friends=on
    else
        cf_help
    fi
else
    main_help
fi
