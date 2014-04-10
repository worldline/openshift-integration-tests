LOGIN=`rhc app show mysqlapp    |grep Username | awk '{print $NF}'`
PASSWORD=`rhc app show mysqlapp |grep Password | awk '{print $NF}'`

curl -s -k -u"$LOGIN:$PASSWORD" https://mysqlapp-$NAMESPACE.$CLOUD_DOMAIN/phpmyadmin/ | grep -v Erreur
