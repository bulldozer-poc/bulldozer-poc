
FILE="$BRANCH.tmp"
#file
echo "$BRANCH" >> $FILE
git add .
git commit -m "message to $FILE"
git push