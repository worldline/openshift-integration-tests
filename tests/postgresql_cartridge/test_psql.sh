LOGIN=`rhc app show postgresqlapp    |grep Username | awk '{print $NF}'`
PASSWORD=`rhc app show postgresqlapp |grep Password | awk '{print $NF}'`

rhc port-forward postgresqlapp &

# http://stackoverflow.com/questions/360201/kill-background-process-when-shell-script-exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT
sleep 7

PORT=`rhc-list-ports 2>&1 |grep "543" | head -n1 | cut -d: -f2`

expect << EOF
  set timeout 3
  spawn psql --host localhost --port $PORT --username $LOGIN --password postgresqlapp
  expect "Password for user"
  send -- "$PASSWORD\r"
  expect "postgresqlapp=#"
  send -- "\\\\q\r"
  expect eof
EOF

