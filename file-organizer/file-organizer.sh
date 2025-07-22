#!/bin/bash


#Path to the Directory
read -p "Please Enter the path to the directory you want to Organize: " TARGET_DIR

#Check if Directory Entry is Valid or Not
if cd "$TARGET_DIR" 2>/dev/null;

then
	echo "Entered the Directory $TARGET_DIR"
else
	echo -e "Failed to Locate Directory \nRerun the Script and Enter Correct Path"
	exit 1
fi

	echo "Sorting Files...."

#Sort Files and Add them to Respective Directories
for file in *; do
 if [ -f "$file" ];
  then
   case "$file" in 
	*.jpg|*.png)
	mkdir -p Images
	mv "$file" Images/;;

	*.zip|*.tar.gz)
	mkdir -p Archives
	mv "$file" Archives/;;

	*.pdf)
	mkdir -p PDFs
	mv "$file" PDFs/;;

	*.txt)
	mkdir -p TextFiles
	mv "$file" TextFiles/;;

	*)
	mkdir -p Others
	mv "$file" Others/;;
   esac
  fi
	
done
  	echo "Process Completed!"



