@echo off 
chcp 65001 

set /p bindIP=请输入bindIP:
set /p consulIP=请输入consulIP:
set /p consulPort=请输入consulPort:

for /D  %%s in (%~dp0*) do (
	%~dp0sed -i "s/\"ApplicationIP\":\s\".*\"/\"ApplicationIP\": \"%bindIP%\"/g"  %%s/appsettings.json
	%~dp0sed -i "s/\"ConsulIP\":\s\".*\"/\"ConsulIP\": \"%consulIP%\"/g"  %%s/appsettings.json
	%~dp0sed -i "s/\"ConsulPort\":\s\".*\"/\"ConsulPort\": \"%consulPort%\"/g"  %%s/appsettings.json
	
	echo %%s 配置完成
)

