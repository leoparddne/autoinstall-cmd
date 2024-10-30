$pslPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

echo "running path:$pslPath"



Expand-Archive -LiteralPath $pslPath\Infrastruct.Zip -DestinationPath $pslPath\Infrastruct
Expand-Archive -LiteralPath $pslPath\API.Zip -DestinationPath $pslPath\API
Expand-Archive -LiteralPath $pslPath\ConsulConfigTool.Zip -DestinationPath $pslPath\ConsulConfigTool
start $pslPath\serviceInstall.cmd