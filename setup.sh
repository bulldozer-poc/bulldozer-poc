DIR="$(cd "$(dirname "$0")" && pwd)"
$DIR/clean.sh
export PREFIX=INT
$DIR/delete-test-brances.sh
$DIR/create-test-brances.sh