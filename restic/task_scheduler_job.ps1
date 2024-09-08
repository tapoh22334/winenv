Push-Location $PSScriptRoot

.\02_backup.ps1 repository_BackupB target-directory-all
$filename = Get-Date -Format "yyyy-MMdd-HHmmss"
.\03_print_snapshot.ps1 repository_BackupB >> C:\log\restic-ddrive-all\log_$filename.txt

.\02_backup.ps1 repository_BackupA target-directory-picture
$filename = Get-Date -Format "yyyy-MMdd-HHmmss"
.\03_print_snapshot.ps1 repository_BackupA >> C:\log\restic-picture\log_$filename.txt
