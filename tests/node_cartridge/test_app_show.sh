expect << EOF
  spawn rhc app show nodeapp
  expect "nodejs-0.6"
  expect eof
EOF
