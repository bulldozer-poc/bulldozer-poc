echo "========CREATE $BRANCH BRANCH"
DIR="$(cd "$(dirname "$0")" && pwd)"
git checkout -b "$BRANCH"
git push -u origin $BRANCH
$DIR/commit-file.sh
$DIR/create-pr.sh
$DIR/success-status.sh