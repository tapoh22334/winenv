$MNT='E:\mnt'
If(!(test-path -PathType container $MNT)) {
    New-Item -ItemType Directory -Path $MNT
}

restic --repository-file $PSScriptRoot\repository --password-file $PSScriptRoot\password restore latest --target $MNT
