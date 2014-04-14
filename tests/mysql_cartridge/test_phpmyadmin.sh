LOGIN=`rhc app show mysqlapp | grep "Username:" | sed 's/\s*Username\:\s*//'`
PASSWORD=`rhc app show mysqlapp | grep "Password:" | sed 's/\s*Password\:\s*//'`

curl -s -k -u"$LOGIN:$PASSWORD" https://mysqlapp-$NAMESPACE.$CLOUD_DOMAIN/phpmyadmin/ | grep -v Erreur
