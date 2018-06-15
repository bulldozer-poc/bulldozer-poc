DIR="$(cd "$(dirname "$0")" && pwd)"


for (( i=1; i<=$1; i++ ))
do
	BRANCH="$PREFIX-$i"
	git branch -D $BRANCH
	git push origin :$BRANCH
done