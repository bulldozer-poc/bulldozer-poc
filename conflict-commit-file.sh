
FILE=$BRANCH
#file
echo "$BRANCH" >> $FILE
git add .
git commit -m "message to $FILE"
git push -u origin $BRANCH