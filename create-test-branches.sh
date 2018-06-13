INITIAL_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
BRANCH="$PREFIX-1"
git checkout -b "$BRANCH"
git push -u origin $BRANCH

BRANCH="$PREFIX-2"
git checkout -b "$BRANCH"
git push -u origin $BRANCH

BRANCH="$PREFIX-3"
git checkout -b "$BRANCH"
git push -u origin $BRANCH

git checkout $INITIAL_BRANCH