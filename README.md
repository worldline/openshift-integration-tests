# OpenShift Integration Tests

## Setup

    $ yum install expect
    $ echo "        StrictHostKeyChecking no" >> /etc/ssh/ssh_config

## Use

    $ git clone https://github.com/AtosWorldline/openshift-integration-tests.git
    $ cd openshift-integration-tests
    $ ./run tests

It should print: 

    Running tests
      tests/
        mongodb_cartridge
        ✓ test_mongo.sh
        ✓ test_snapshot.sh

        mysql_cartridge
        ✓ test_phpmyadmin.sh
        ✓ test_snapshot.sh

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
        ✓ test_snapshot.sh

        python2_cartridge
        ✓ test_website.sh

        python3_cartridge
        ✓ test_website.sh

        ruby_cartridge
        ✓ test_website.sh


    Done
    17 tests passed.
    0 tests failed.

TODO add more tests

```
$ rhc
account                   app-force-stop            authorization-add         cartridge-show            git-clone                 sshkey-list
alias                     app-reload                authorization-delete      cartridge-start           logout                    sshkey-remove
alias-add                 app-restart               authorization-delete-all  cartridge-status          port-forward              sshkey-show
alias-delete-cert         apps                      cartridge                 cartridge-stop            server                    tail
alias-list                app-show                  cartridge-add             cartridge-storage         setup                     threaddump
alias-remove              app-ssh                   cartridge-list            domain                    snapshot
alias-update-cert         app-start                 cartridge-reload          domain-create             snapshot-restore
app                       app-stop                  cartridge-remove          domain-delete             snapshot-save
app-create                app-tidy                  cartridge-restart         domain-show               sshkey
app-delete                authorization             cartridge-scale           domain-update             sshkey-add
```

## LICENSE (MIT)

The MIT License (MIT)

Copyright (c) 2013 Atos Worldline

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
