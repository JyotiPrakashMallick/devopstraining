#!/bin/sh

install_Editors(){
    #installing the pre-requisits for any text editor
    installation_option=2 #This parameter will be provided from the CI tool
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
	                if [ $? -eq 0 ]
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

install_Editors
