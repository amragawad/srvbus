$serviceBusNamespaceName = Read-Host -Prompt "Enter a name for the service bus namespace to be created"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
$resourceGroupName = "${serviceBusNamespaceName}rg"
#$templateUri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.servicebus/servicebus-create-namespace/azuredeploy.json"
$templateFile = ".\armtemplate.json"

New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile -serviceBusNamespaceName $serviceBusNamespaceName

Write-Host "Press [ENTER] to continue ..."