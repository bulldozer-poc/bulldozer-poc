COMMIT=$(git rev-parse HEAD)
curl -s -X POST --connect-timeout 60 --max-time 60  -H "Authorization: token $TOKEN" -d '{"state":"failure","context":"check_1","description":"a_descr","target_url":""}' https://api.github.com/repos/jontierno/bulldozer-poc/statuses/$COMMIT
echo "status send to $COMMIT"