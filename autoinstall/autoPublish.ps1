$codeDir="D:\work\code\work"
$publishDir="D:\work\publish\CICDAll\publishwebapi\publish"

 $TRUE_FALSE=(Test-Path $publishDir)
 if($TRUE_FALSE -eq "True"){
 	rmdir $publishDir\*  -Force -Recurse
 }
 
 # del API.zip

 dotnet publish $codeDir\TEST.API\Server.TEST.WebAPI\Server.TEST.WebAPI.sln    -c Release --property:PublishDir=$publishDir\TEST

 
# $pslPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
# echo "$i 开始打包"
# Compress-Archive  $publishDir  $pslPath\API.zip
# echo "$i 打包完成"


# $pslPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
# 
# echo "运行路径:$pslPath"
# 
# 
# $TRUE_FALSE=(Test-Path $pslPath\publish)
# if($TRUE_FALSE -eq "True"){
# 	rmdir $pslPath\publish\*  -Force -Recurse
# }
# else{
# 	mkdir $pslPath\publish
# }
# 
# foreach($i in Get-ChildItem -Attributes D -Name){
# 	if($i -eq "publish"){
# 		echo "This is publish"
# 		continue;
# 	}
# 	echo "$i 开始打包"
# 	Compress-Archive  $pslPath\$i  $pslPath\publish\$i.zip
# 	echo "$i 打包完成"
# }
# 
#
#exit

