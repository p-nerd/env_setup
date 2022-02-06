elif [[ $1 == java ]]
then
    jdks_path=/usr/lib/jvm
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
        ls -la /usr/lib/jvm
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