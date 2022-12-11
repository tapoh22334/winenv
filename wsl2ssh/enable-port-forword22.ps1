$IP = (wsl -d Ubuntu exec hostname -I).Trim()
netsh.exe interface portproxy delete v4tov4 listenport=22
netsh.exe interface portproxy add v4tov4 listenport=22 connectaddress=$IP
