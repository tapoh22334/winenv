Push-Location $PSScriptRoot

.\02_backup.ps1 repository_BackupB target-directory-all

$filename = Get-Date -Format "yyyy-MMdd-HHmmss"
.\03_print_snapshot.ps1 repository_BackupB >> C:\log\log_$filename.txt