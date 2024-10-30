@echo off 
chcp 65001 


for /D  %%s in (%~dp0*) do (
	call %%s/Install.bat
	
	echo %%s 安装完成
)




