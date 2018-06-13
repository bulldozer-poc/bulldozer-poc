branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
f=branch
#file
echo "$BRANCH" >> $F
git commit -m "message to $F"
git add $F
gpsup