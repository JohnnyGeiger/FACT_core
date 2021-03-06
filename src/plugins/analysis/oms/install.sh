#!/usr/bin/env bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

echo "------------------------------------"
echo "     install oms dependencies       "
echo "------------------------------------"

# common_analysis_oms
sudo apt-get install -y clamav clamav-daemon clamdscan
sudo -E freshclam

sudo -EH pip3 install --upgrade git+https://github.com/fkie-cad/common_analysis_oms.git
	
exit 0
