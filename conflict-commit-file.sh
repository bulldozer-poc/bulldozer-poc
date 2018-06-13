f=branch
#file
echo "conflict $BRANCH" >> $F
git commit -m "message to $F"
git add $F
gpsup