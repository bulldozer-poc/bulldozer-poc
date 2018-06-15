INITIAL_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
export BASE_BRANCH=$INITIAL_BRANCH
DIR="$(cd "$(dirname "$0")" && pwd)"


for (( i=1; i<=$1; i++ ))
do
   	git checkout $INITIAL_BRANCH
	export BRANCH="$PREFIX-$i"
	$DIR/branch-create.sh
done

export BRANCH="$PREFIX-1"
$DIR/branch-create.sh



git checkout $INITIAL_BRANCH
export BRANCH="$PREFIX-3"
$DIR/branch-create.sh

git checkout $INITIAL_BRANCH