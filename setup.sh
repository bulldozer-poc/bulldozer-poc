git checkout master
git pull
DIR="$(cd "$(dirname "$0")" && pwd)"
$DIR/clean.sh
export PREFIX=INT
$DIR/delete-test-branches.sh
$DIR/create-test-branches.sh $1