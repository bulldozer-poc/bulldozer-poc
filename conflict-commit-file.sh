BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
#file
echo "$BRANCH" >> conflict.tmp
git add .
git commit -m "message to $FILE"
git push
