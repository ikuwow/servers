#!/bin/bash

rm -f ./Berksfile.lock
echo "Delete Berksfile.lock"
rm -rf ./cookbooks
echo "Delete cookbooks"

berks vendor ./cookbooks
knife cookbook upload -a

# example:
# knife ssh name:testtube 'sudo chef-client --log_level warn' -x degawa -p 22360 -i ~/.ssh/id_rsa
