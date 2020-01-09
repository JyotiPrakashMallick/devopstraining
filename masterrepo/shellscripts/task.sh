#!/bin/sh
function install_os_updates(){
    echo "Installing OS updates"
        sudo apt-get update
        sudo apt-get upgrade

}

function add_groups(){
    echo "Add groups"
    sudo add group Marvel
    sudo add group DC
    pwd
}

function add_User(){
    echo "Add groups"
    sudo usermod -a -G Marvel t.stark
    sudo usermod -a -G Marvel b.banner
    sudo usermod -a -G Marvel s.rogers
    sudo usermod -a -G DC c.kent
    sudo usermod -a -G DC b.wayne
}

function install_third_party(){
    sudo apt-get update
    if [ $? -eq 0 ]
        then
        echo "update sucessfull"
            echo "Installing the packages"
                #install 'bzip2' in the localmachine
                sudo apt-get install bzip2
                    if [ $? -eq 0 ]
                    then
                    echo "Sucessfully installed bzip....validating the installation"
                    configinstallationResult=$(bzip2 --version 2>&1 | sed 1q)
                        if [ "$configinstallationResult" != "bzip2, a block-sorting file compressor" ]; then
                        echo "Installation successfull"
                        else 
                        echo "Installation returned the error: $configinstallationResult";
                        exit 1;
                        fi
                    fi
                #install '7zip' in the localmachine
                sudo apt install p7zip-full p7zip-rar
                    if [ $? -eq 0 ]
                    then
                    echo "Sucessfully installed bzip....validating the installation"
                    configinstallationResult2=$(7z 2>&1 | sed 2q)
                        if [ "$configinstallationResult2" != "7-Zip [64] 9.20 Copyright (c) 1999-2010" ]; then
                        echo "Installation successfull"
                        else 
                        echo "Installation returned the error: $configinstallationResult2";
                        exit 1;
                        fi
                    fi
    else
        echo "update unsucessfull"
    fi
}

function additionalConsideration(){
    #installing the pre-requisits for any text editor
    

}

function trigger_Execution(){

    install os updates
    install_os_updates
    add_groups
    add_User


}



trigger_Execution