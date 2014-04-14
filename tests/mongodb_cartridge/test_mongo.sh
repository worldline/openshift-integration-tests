LOGIN=`rhc app show mongodbapp    |grep Username | awk '{print $NF}'`
PASSWORD=`rhc app show mongodbapp |grep Password | awk '{print $NF}'`

rhc port-forward mongodbapp &

# http://stackoverflow.com/questions/360201/kill-background-process-when-shell-script-exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT
sleep 7

PORT=`rhc-list-ports 2>&1 |grep "270" | head -n1 | cut -d: -f2`

PORT=27017

expect << EOF
  spawn mongo --host localhost --port $PORT admin
  expect ">"
  send -- "db.auth(\"$LOGIN\", \"$PASSWORD\")\r"
  expect "1"
  send -- "show dbs\r"
  expect "mongodbapp"
  send -- "quit()\r"
  expect eof
EOF
