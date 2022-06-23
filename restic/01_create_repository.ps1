Param(
    [parameter(mandatory=$true)][String]$RepoFile
)
restic init --repository-file $PSScriptRoot\$RepoFile --password-file $PSScriptRoot\password
