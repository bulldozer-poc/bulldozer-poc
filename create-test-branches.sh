INITIAL_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
export BASE_BRANCH=$INITIAL_BRANCH
DIR="$(cd "$(dirname "$0")" && pwd)"

BRANCH="$PREFIX-1"
git checkout -b "$BRANCH"
git push -u origin $BRANCH
$DIR/commit-file.sh
$DIR/create-pr.sh

git checkout INITIAL_BRANCH
BRANCH="$PREFIX-2"
git checkout -b "$BRANCH"
git push -u origin $BRANCH
$DIR/commit-file.sh
$DIR/create-pr.sh

git checkout INITIAL_BRANCH
BRANCH="$PREFIX-3"
git checkout -b "$BRANCH"
git push -u origin $BRANCH
$DIR/commit-file.sh
$DIR/create-pr.sh

git checkout $INITIAL_BRANCH