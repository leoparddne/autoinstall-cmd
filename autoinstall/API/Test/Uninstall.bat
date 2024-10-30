set serviceName=Server.Test.WebAPI

sc stop   %serviceName% 
sc delete %serviceName% 

pause