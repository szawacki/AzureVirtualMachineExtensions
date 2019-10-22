Param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $DomainName,

    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [Security.SecureString]
    $Password
)

Start-BitsTransfer -Source "https://raw.githubusercontent.com/szawacki/AzureVirtualMachineExtensions/master/InstallDomainController.ps1" -Destination "C:\Install.ps1"

#& Install.ps1 -DomainName $DomainName -Password Password
