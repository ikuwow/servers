#!/bin/bash

# SSHのポートを変更（/etc/ssh/sshd_config）

# FQDNの変更
# Ubuntuの場合、/etc/resolv.confでドメインを追加
# Ubuntuの場合、/etc/hostsnameで変更して、/etc/hostsに追加する

ipaddressは予め定めておくこと。

# chefユーザーの追加
ADMIN_USER=chef
useradd $ADMIN_USER -G admin
# /etc/sudoersでadminグループをパスワード無しsudo可能になっている前提
mkdir /home/$ADMIN_USER/.ssh
chmod 700 /home/$ADMIN_USER/.ssh
touch  /home/$ADMIN_USER/.ssh/authorized_keys
chmod 600 /home/$ADMIN_USER/.ssh/authorized_keys
chown -R chef:chef /home/$ADMIN_USER/.ssh

# Mac miniの鍵を追加
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+52+0l9eL744T8K0GeLYGsbhpRylD5Jnqk2cG0Cr216CprjPWjJ0oVs8z4f+eHOogN1PEQA+MFtWUOey6/LvPFuKEIfMgZ7DEeEg1Gw/oIQvHKdZzlLpuR+oCDsAj0NTr+VmY6tFTnMrpwSSLZkGf+E0VFXeCcm0RVw2JAO99oBQT9kqi723tqrLSOncDwRMW89logcb6D9qk95f3RjN3vcxoHopq2BQIMf1JQyUMv1xOMkrcSHTqavoAR3qMeO2tsUcuI2aRsDLR8xUGoD6hsUEy7shLVIoO7X3UEgJpnZyc2VgqODBofyLlGdZ9DlmrzYBk+1emMS5O6G5k/LsN degawaikuo@degawaikuonoMacmini.local" >> /home/$ADMIN_USER/.ssh/authorized_keys


