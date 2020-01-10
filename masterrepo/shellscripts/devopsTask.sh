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
}

function add_User(){
    echo "Add groups"
    sudo usermod -a -G Marvel t.stark
    sudo usermod -a -G Marvel b.banner
    sudo usermod -a -G Marvel s.rogers
    sudo usermod -a -G DC c.kent
    sudo usermod -a -G DC b.wayne
}

function install_third_party_Compressions(){
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
#Installing all the editors on the basis of choice
function install_Editors(){
    #installing the pre-requisits for any text editor
    installation_option=1 #This parameter will be provided from the CI tool
    case $installation_option in 
        "1") 
            echo "Installing vim editor in the target machines"
            echo "Verifying the vim editor installed previously ??"
	        vi_InstalledValidator=$(dpkg -l | grep vim | awk '{ print $5 " " $3 }' |  sed 1q)
	            if [ "$vi_InstalledValidator" != "vi" ]
                then
                    echo "Vim editor is already installed in the target machine"
                else
                    echo "Installing vim editor in the target machine....as a pre-requisit the system need to be update"
                    sudo apt-get update
                    if [ $? -eq 0 ]
                    then
                    echo "System update successfully, you installing vim editor now"
                    #installing vim editor
                    echo -ne '\n' | sudo apt install vim #'\n' will hit enter whenever the terminal will ask
                        if [ $? -eq 0 ] 
                        then
                        echo "Previous command executed sucessfully...now verifying the installation of the editor"
                        vi_success_verifier= $(vim -h | sed 1q)
                            if [ "vi_success_verifier" != "VIM - Vi IMproved" ]
                            then
                            echo "Sucessfully installed vim editor"
                            else
                            echo "Installation Failed"
                            fi
                        fi
                    fi
                fi
        ;;
        "2") 
                echo "Installing notepad++ in the target machines"
                pre_check(){
                echo -ne '\n' | sudo apt-get install snapd snapd-xdg-open
	                if [ $? 0 ]
	                then 
	                echo "Pre check complete !!!"
                    fi
                }

                notepad_plus(){
	            sudo snap install notepad-plus-plus
                }
                $snap_validator=$(apt list 2>/dev/null | grep snapd-xdg-open | sed 4q)
                if [ $snap_validator != "installed" ]
                   then
	               echo "The package is installed"
	               notepad_plus
                   else
	               echo "Installing the pre-requisists package first "
                   pre_check
	                if [ $? -eq 0 ]
	                then
	                notepad_plus
	                fi
                fi
        ;;
        *) 
                echo "No option provided so exiting with an error"
                exit 1
        ;;
esac
}
#Install the Git version control utility
function git_Utility(){
version_Check=$(git --version)
if [ "$version_Check" != "No such file or directory" ]
then
  echo "Git is not installed in the target machine"
	sudo apt update
        if [ $? -eq 0 ]
        then
        echo "Successfully update the machine"
	    echo -ne '\n' | sudo apt install git
            if [ $? -eq 0 ]
            then
            echo "Successfully installed GIT in the machine...now validating"
            version_ReCheck=$(git --version)
		        if [ "$version_ReCheck" != "git version" ]
                then
                echo "Git installed successfully"
                else  
		        echo "Installation failure, please check the logs"
                fi
            fi 
        fi
else
  echo "Git is already there and the version is" $version_Check
fi
}
#Download and extract the archived file from an URL
function download_Extract(){
    validator(){
	validation=$(wget --version | sed 1q)
    }
    installer(){
       apt-get install wget
       if [ $? -eq 0 ]
       then
         echo "Installation Successfull...now validating the installation"
	     validator
       else
         echo "Installation Failed"
       fi
}
download(){
	echo "Download the packages"
	wget -c https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
	if [ $? -eq 0 ]
        then
      	echo "Download sucessfull"
	else
       	echo "Download Failed"
    fi
}

extract(){
	tar -xvzf Python-3.7.5.tgz
}
driver(){
	validator
	if [ "$validation" != "Wget" ]
	then
	echo "Wget is already installed in the system"
	else
	echo "Wget is not installed...so installing wgwt first as a pre-requisits"
	    installer	
    fi
	download
	extract
        if [ $? -eq 0 ]
	    then 
	       echo "Extraction sucessfull"
        else
          echo "Extraction failed" 
       fi			
}
 driver
}

#Driver function which will drive all the other operation
function trigger_Execution(){
    install os updates
    install_os_updates
    add_groups
    add_User
    install_third_party_Compressions
    install_Editors
    git_Utility
    download_Extract

}

trigger_Execution