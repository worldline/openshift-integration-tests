expect <<EOF
  spawn rhc snapshot save mongodbapp
  expect "Pulling down a snapshot to mongodbapp.tar.gz..."
  expect "Running extra dump for mongodb-2.2"
  expect "Done"
  expect "Creating and sending tar.gz"
  expect "Done"
  expect "RESULT:"
  expect "Success"
  expect eof
EOF

expect <<EOF
  spawn tar tvzf mongodbapp.tar.gz
  expect "git/mongodbapp.git/objects"
  expect "app-root/data/mongodb_dump_snapshot.tar.gz"
  expect "app-root/runtime/repo/php/index.php"
  expect "data/mongodbapp.ns"
  expect "log/mongodb.log"
  expect "etc/mongodb.conf"
  expect eof
EOF

rm -f mongodbapp.tar.gz
