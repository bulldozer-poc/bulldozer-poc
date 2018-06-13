BRANCH="$PREFIX-1"
git branch -D $BRANCH
git push origin :$BRANCH

BRANCH="$PREFIX-2"
git branch -D $BRANCH
git push origin :$BRANCH

BRANCH="$PREFIX-3"
git branch -D $BRANCH
git push origin :$BRANCH