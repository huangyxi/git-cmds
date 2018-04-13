git add .
if [ $# -eq 0 ]
then
    git commit -m "debug"
else
	git commit -m $1
fi
if [ $? -ne 1 ]
then
	git push origin master
fi

