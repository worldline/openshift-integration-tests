expect <<EOF
  spawn rhc snapshot save mysqlapp
  expect "Pulling down a snapshot to mysqlapp.tar.gz..."
  expect "Running extra dump for mysql-5.2"
  expect "Done"
  expect "Creating and sending tar.gz"
  expect "Done"
  expect "RESULT:"
  expect "Success"
  expect eof
EOF

expect <<EOF
  spawn tar tvzf mysqlapp.tar.gz
  expect "mysql-5.1/data/mysql/"
  expect "mysql-5.1/log/mysql_error.log"
  expect "mysql-5.1/etc/my.cnf"
  expect "git/mysqlapp.git/objects"
  expect "app-root/data/mysql_dump_snapshot.gz"
  expect "app-root/runtime/repo/php/index.php"
  expect "phpmyadmin-3.4/conf.d/phpMyAdmin.conf"
  expect eof
EOF

rm -f mysqlapp.tar.gz
