export BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
DIR="$(cd "$(dirname "$0")" && pwd)"
$DIR/conflict-commit-file.sh