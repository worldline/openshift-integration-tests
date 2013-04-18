expect << EOF
  spawn  rhc app ssh nodeapp
  expect "Connecting to"
  expect "]\>"
  send -- "ls\r"
  expect "app-root"
  send -- "exit\r"
  expect eof
EOF
