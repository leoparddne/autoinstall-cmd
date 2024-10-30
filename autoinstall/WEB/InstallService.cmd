@echo off 
chcp 65001 

rem set  bindIP=%1
set /p bindIP=input gateway ip(127.0.0.1):


set currentPath=%~dp0


%~dp0sed -i s/127.0.0.1/%bindIP%/g %~dp0conf/nginx.conf


cd %currentPath%\..

set autoinstallPath=%cd%

cd %currentPath%

echo installpath:%autoinstallPath%

set autoinstallPath=%autoinstallPath:\=\\%
echo installpath:%autoinstallPath%

sed -i "s/D:\/SoftwareCenter/%autoinstallPath%\\API\\API\\System\\SoftwareCenter/g"  conf/nginx.conf

%~dp0nginx-service.exe install
sc start nginx

pause


