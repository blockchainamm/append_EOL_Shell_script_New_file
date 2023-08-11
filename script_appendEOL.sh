# Prompt for reading filename with extention from the user
read -p 'Enter input file name with extention : ' FileName

# Condition to check if file exists
if [ -e $FileName ]
then
    value='\\'
    # Append character \ to each End Of Line ending with number
    ex  +"g/[0-9]/s/$/$value/g" -cwq $FileName
    echo The file $FileName was appended with the character \ .at the End Of each Line ending with a number
else
	echo The file $FileName does not exist
fi
