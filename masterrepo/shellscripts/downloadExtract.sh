#!/bin/sh

#Download and exctract using `wget`, other software can be used like CURL.

download_Extract()
    {
    	validator(){
	validation=$(wget --version | sed 1q)
    	}
    	installer(){
	software_Name="WGET"
        apt-get install wget
       		if [ $? -eq 0 ]
       		then
         		echo "$software_Name instaled successfully in the target machine...now validating the installation process"
	        validator
       		else
         		echo "$software_Name installation failed in the target machine"
                fi
       }
       download(){
	echo "Downloading the requested packages"
	wget -c https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
		if [ $? -eq 0 ]
	        then
      			echo "Package has been download sucessfully"
		else
		       	echo "Downloading Failed"
    		fi
	}

	extract(){
		tar -xvzf Python-3.7.5.tgz
	}
	installation_driver()
	{
		
		#Calling the validator methode to verify the `wget` is installed in the target machine		
		validator
			if [ "$validation" != "Wget" ]
			then
				echo "Wget is already installed in the system"
			else
				echo "Wget is not installed...so installing wgwt first as a pre-requisits"
		        	installer	
		        fi
		#Once the dependecy package has been installed in the target machine, only two steps left download and extract		
		download
		extract
        		if [ $? -eq 0 ]
	    		then 
			       echo "Extraction sucessfull"
        		else
          			echo "Extraction failed" 
       			fi			
	}
 	installation_driver
     }

download_Extract
