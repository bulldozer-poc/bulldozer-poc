CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
BRANCH="$PRERFIX-1"
curl -s -X POST --connect-timeout 60 --max-time 60  -H "Authorization: token $TOKEN" -d "{'tittle':'PR FOR $BRANCH','head':'$BRANCH','base':'$CURRENT_BRANCH','body':'', 'mantainers_can_modify': true}" https://api.github.com/repos/jontierno/bulldozer-poc/pulls
