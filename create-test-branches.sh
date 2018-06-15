INITIAL_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
export BASE_BRANCH=$INITIAL_BRANCH
DIR="$(cd "$(dirname "$0")" && pwd)"

export BRANCH="$PREFIX-1"
$DIR/branch-create.sh

git checkout $INITIAL_BRANCH
export BRANCH="$PREFIX-2"
$DIR/branch-create.sh

git checkout $INITIAL_BRANCH
$DIR/branch-create.sh

git checkout $INITIAL_BRANCH