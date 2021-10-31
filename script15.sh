echo "Enter the file name"
read x
if [ -f $x ]
then
    echo "This is a regular file"
else
    echo "This is a directory"
fi
