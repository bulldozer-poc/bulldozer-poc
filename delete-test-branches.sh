
BRANCHES=$(git branch | sed -n -e "s/^\  \($PREFIX-.*\)/\1/p")
echo BRANCHES
for BRANCH in $BRANCHES
do
	git branch -D $BRANCH
	git push origin :$BRANCH
done