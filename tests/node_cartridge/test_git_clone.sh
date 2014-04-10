REPO_DIR=".repo"

expect << EOF
  spawn  rhc git-clone nodeapp -r $REPO_DIR
  expect "Initialized empty Git repository in"
  expect "Your application code is now in"
  expect eof
EOF

ls $REPO_DIR
ls $REPO_DIR/.git

sed -i 's/Welcome to OpenShift/Welcome to my OpenShift !/g' $REPO_DIR/index.html

pushd $REPO_DIR
git add index.html
git commit -m "new commit"
git push
popd
rm -fr $REPO_DIR

echo "sleep 5s"
sleep 5

echo "curl website and check the new text is present"
curl -s nodeapp-$NAMESPACE.$CLOUD_DOMAIN | grep "Welcome to my OpenShift"

