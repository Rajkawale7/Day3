#!/bin/bash

#Creating .txt files into their certain folder

mkdir Folder
cd Folder

#creating files
touch a.txt b.txt c.txt




for file in `ls *.txt`

do

        folderName=`echo $file | awk -F . '{print $1}' `

        if [ -d $folderName ]

        then

        mv $file $folderName

        #echo "Folder has been already created, File just copied now"

        else

        mkdir $folderName

	mv $file $folderName

        #echo "Folder has been created & File is copied successfully"

        fi

done

#Files a.txt b.txt and c.txt created and move into folders a, b and c.
