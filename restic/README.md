
## Backup

 - BackupA D:\picture 以下
 - BackupB D:\ 以下

## バックアップ

```
.\02_backup.ps1 .\repository_BackupA target-directory-picture
.\02_backup.ps1 .\repository_BackupB target-directory-all
```

## 確認

```
.\03_print_snapshot.ps1 .\repository_BackupA
.\03_print_snapshot.ps1 .\repository_BackupB
```

## リストア

`E:\mnt`にマウントされる

```
.\04_restore.ps1 .\repository_BackupA
.\04_restore.ps1 .\repository_BackupB
```


