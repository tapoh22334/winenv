Param(
    [parameter(mandatory=$true)][String]$RepoFile
)

$MNT='E:\mnt'
If(!(test-path -PathType container $MNT)) {
    New-Item -ItemType Directory -Path $MNT
}

restic --repository-file $PSScriptRoot\$RepoFile --password-file $PSScriptRoot\password restore latest --target $MNT
