LOGIN=`rhc app show postgresqlapp | grep "Username:" | sed 's/\s*Username\:\s*//'`
PASSWORD=`rhc app show postgresqlapp | grep "Password:" | sed 's/\s*Password\:\s*//'`

rhc port-forward postgresqlapp &

## http://stackoverflow.com/questions/360201/kill-background-process-when-shell-script-exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT
sleep 7

PORT=5432

expect << EOF
  set timeout 3
  spawn psql --host localhost --port $PORT --username $LOGIN --password postgresqlapp
  expect "Password for user"
  send -- "$PASSWORD\r"
  expect "postgresqlapp=#"
  send -- "\\\\q\r"
  expect eof
EOF

