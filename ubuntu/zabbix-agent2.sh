#!/bin/bash
# App: Zabbix Agent 2
# OS: Ubuntu 24.04 LTS (Noble)

sudo apt update && sudo apt upgrade -y
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu24.04_all.deb
sudo dpkg -i zabbix-release_latest_7.0+ubuntu24.04_all.deb
sudo apt update
sudo rm -f zabbix-release_latest_7.0+ubuntu24.04_all.deb
sudo apt install -y zabbix-agent2
sudo systemctl restart zabbix-agent2
sudo systemctl enable zabbix-agent2
