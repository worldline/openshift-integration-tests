expect << EOF
  set timeout 3
  spawn  rhc tail nodeapp
  expect "npm info using npm@"
  expect "npm info using node@"
  expect "node server.js"
  expect "Node server started on"
  expect eof
EOF
