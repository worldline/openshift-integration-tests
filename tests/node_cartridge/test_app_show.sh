expect << EOF
  spawn rhc app show nodeapp
  expect "Gears:   1"
  expect eof
EOF
