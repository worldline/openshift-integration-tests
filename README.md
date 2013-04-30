# OpenShift Integration Tests

## Setup

    $ yum install expect
    $ echo "        StrictHostKeyChecking no" >> /etc/ssh/ssh_config

## Use

    $ ./run tests

It should print: 

    Running tests
      tests/
        mongodb_cartridge
        ✓ test_mongo.sh

        mysql_cartridge
        ✓ test_phpmyadmin.sh

        node_cartridge
        ✓ test_app_show.sh
        ✓ test_apps.sh
        ✓ test_app_ssh.sh
        ✓ test_git_clone.sh
        ✓ test_tail.sh
        ✓ test_website.sh

        perl_cartridge
        ✓ test_website.sh

        php_cartridge
        ✓ test_website.sh

        postgresql_cartridge
        ✓ test_psql.sh

        python2_cartridge
        ✓ test_website.sh

        python3_cartridge
        ✓ test_website.sh

        ruby_cartridge
        ✓ test_website.sh


    Done
    14 tests passed.
    0 tests failed.

TODO add more tests
