#!/bin/bash

# script to add characters at the end of each line of a file copied to a new file

# Prompt for reading filename with extention from the user
read -p 'Enter input file name with extention : ' FileName
read -p 'Enter output file name with extention : ' output_file

# Condition to check if file exists
if [ -e $FileName ]
then
    value='\\'

    # Copy from one file to another
    cp $FileName  $output_file

    # Append character \ to each End Of Line ending with number
    ex  +"g/[0-9]/s/$/$value/g" -cwq $output_file
    echo The file $output_file was appended with the character \\ .at the End Of each Line ending with a number
else
	echo The file $FileName does not exist
fi