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

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName $DomainName -SafeModeAdministratorPassword $Password
