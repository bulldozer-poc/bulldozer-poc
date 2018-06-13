f=branch
#file
echo "conflict $BRANCH" >> $F
git comimit -m "message to $F"
git add $F
gpsup