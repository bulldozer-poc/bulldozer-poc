CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
BRANCH="$PREFIX-1"
curl -s -X POST --connect-timeout 60 --max-time 60  -H "Authorization: token $TOKEN" -d "{\"title\":\"PR FOR $BRANCH\",\"head\":\"$BRANCH\",\"base\":\"$CURRENT_BRANCH\",\"body\":\"\", \"mantainers_can_modify\": \"true\"}" https://api.github.com/repos/jontierno/bulldozer-poc/pulls

BRANCH="$PREFIX-2"
curl -s -X POST --connect-timeout 60 --max-time 60  -H "Authorization: token $TOKEN" -d "{\"title\":\"PR FOR $BRANCH\",\"head\":\"$BRANCH\",\"base\":\"$CURRENT_BRANCH\",\"body\":\"\", \"mantainers_can_modify\": \"true\"}" https://api.github.com/repos/jontierno/bulldozer-poc/pulls

BRANCH="$PREFIX-3"
curl -s -X POST --connect-timeout 60 --max-time 60  -H "Authorization: token $TOKEN" -d "{\"title\":\"PR FOR $BRANCH\",\"head\":\"$BRANCH\",\"base\":\"$CURRENT_BRANCH\",\"body\":\"\", \"mantainers_can_modify\": \"true\"}" https://api.github.com/repos/jontierno/bulldozer-poc/pulls
