set serviceName=Server.Test.WebAPI
set serviceFilePath=%~dp0Server.Test.WebAPI.exe
set serviceDescription=TestWebAPIService

sc create %serviceName%  BinPath=%serviceFilePath%
sc config %serviceName%    start=auto  
sc description %serviceName%  %serviceDescription%
sc start  %serviceName%
pause