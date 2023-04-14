#!/bin/bash
set -e

# This script is used to probe the container for vulnerabilities using: 
# LSE: https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh
# LINPEAS: https://linpeas.sh/
# DEEPCE: https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh

wget -q https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh -O /tmp/lse.sh
wget -q https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -O /tmp/linpeas.sh
wget -q https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh -O /tmp/deepce.sh

chmod +x /tmp/lse.sh /tmp/linpeas.sh /tmp/deepce.sh
./tmp/lse.sh
./tmp/linpeas.sh
./tmp/deepce.sh