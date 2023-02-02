#!/usr/bin/bash
# Delete the -----
#put your domain name  without www and .tech on line 4 where  ----- was

sed -i 's/yourdomain/-----/g' ssh.sh
