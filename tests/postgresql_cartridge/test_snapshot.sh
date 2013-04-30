expect <<EOF
  spawn rhc snapshot save postgresqlapp
  expect "Pulling down a snapshot to postgresqlapp.tar.gz..."
  expect "Running extra dump for postgresql-8.4"
  expect "Done"
  expect "Creating and sending tar.gz"
  expect "Done"
  expect "RESULT:"
  expect "Success"
  expect eof
EOF

expect <<EOF
  spawn tar tvzf postgresqlapp.tar.gz
  expect "git/postgresqlapp.git/objects"
  expect "postgresql-8.4/data/pg_log/postgresql"
  expect "postgresql-8.4/data/base/"
  expect "postgresql-8.4/log/postgres.log"
  expect "app-root/data/postgresql_dump_snapshot.gz"
  expect "app-root/runtime/repo/php/index.php"
  expect eof
EOF

rm -f postgresqlapp.tar.gz
