git checkout staging
git fetch --all && git reset --hard origin/staging
DIR="$(cd "$(dirname "$0")" && pwd)"
$DIR/failure-status.sh
git checkout -