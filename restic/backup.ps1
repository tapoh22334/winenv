
$NOW = (Get-Date).ToString("yyyy-MM-dd-HH-mm-ss")

$LOGDIR = $HOME + '\restic\'
$LOGFILE = $LOGDIR + $NOW + '.log'

If(!(test-path -PathType container $LOGDIR)) {
    New-Item -ItemType Directory -Path $LOGDIR
}

echo 'Date/Time:' $NOW | Tee-Object -FilePath $LOGFILE


restic --repository-file $PSScriptRoot\repository --password-file $PSScriptRoot\password backup --tag GABRIEL2 --exclude-caches --files-from $PSScriptRoot\target-directory -v | Tee-Object -FilePath $LOGFILE


$NOW = (Get-Date).ToString("yyyy-MM-dd-HH-mm-ss")
echo 'Date/Time:' $NOW | Tee-Object -FilePath $LOGFILE
