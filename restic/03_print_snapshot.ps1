Param(
    [parameter(mandatory=$true)][String]$RepoFile
)
restic --repository-file $PSScriptRoot\$RepoFile --password-file $PSScriptRoot\password snapshots
