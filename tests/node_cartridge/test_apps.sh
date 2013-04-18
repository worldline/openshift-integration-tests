expect << EOF
  spawn rhc apps
  expect "nodeapp"
  expect eof
EOF
