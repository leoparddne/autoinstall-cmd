@echo off 
chcp 65001 

call %~dp0Infrastruct/install.cmd
echo "infrastruct install finish"

call %~dp0API/autoConfig.cmd
echo "api config finish"


call %~dp0API/install.cmd

netsh advfirewall firewall add rule name="MES_FireWall" dir=in  protocol=TCP localport=7000,7500 action=allow

