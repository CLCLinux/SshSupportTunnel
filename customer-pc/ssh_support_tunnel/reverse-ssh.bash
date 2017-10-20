#/bin/bash

# Open reverse SSH tunnel to support server to allow access to local machine
# Requirements to work: 
#	-User's SSH public key in $SUPPORT_USER/.ssh/authorized_keys on support server
#	-Support tech public key in /root/.ssh/authorized_keys on local machine
#	-SSH server running on local machine with key-based authentication (turn password auth off too)

# Advanced Reality Support Configuration
_SUPPORT_SERVER=support-server.domain.com
_SUPPORT_USER=support-user
_REMOTE_PORT=14000

# Script, no changes should be needed below this
ssh -4 -R ${_REMOTE_PORT}:127.0.0.1:22 ${_SUPPORT_USER}@${_SUPPORT_SERVER}
