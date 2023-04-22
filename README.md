# winenv


## 手動作業まとめ


### restic のタスクスケジューラへの登録

Program/script:
```
%Systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe
```

Add arguments:
```
-ExecutionPolicy Bypass D:\working\winenv\restic\task_scheduler_job.ps1
```


### nvim init.vimの登録

以下のファイルをコピーする
`AppData\Local\nvim\init.vim`
