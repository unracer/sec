TASK:  
- WE NEED SHELL  

HOW:  
- \<misconfig\> 
- \<reverse engineer\>   

YOU SHOULD KNOW:  
- different tools give different result 

#  

STEPS:
### (1) recon server
- ports
- directory of tech
- subdomain
- headers of request / response
- technologies src

### (2) entry point web
- injection  
  + xss  
  + ssti  
  + sqli  
  + rce 
  + ssi  
  + xxe  
  + xpath  
  + jsoni  
  + xslt  
  + ssrf
- auth  
  + easy cred prediction  
  + insufficient session expiration  
  + weak password recovery  
- access controll  
  + idor  
  + rfi  
  + lfi/lfd  
  + ssrf  
  + path traversal  
  + path prediction  
  
### (3) post exploitation
- simulators  
  + evilWinRm  
  + psexec  
  + (rpc,smb,..)exec  
  + reverseShell https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md

### (4) recon os
- user  
  + net users  
  + passwd  
  + shadow  
- environment  
  + env  
- processes  
  + tasklist  
  + ps aux  

### (5) priv escalation
- files of admin  
  + payloadallthethings https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md   
  + icacls | wmic service list full | find /i "pathname"  
  + exploit/windows/local/service_permis  
  + dll hijacking  
  + winpeas https://github.com/carlospolop/PEASS-ng/tree/winpeas_dev/winPEAS/winPEASexe/binaries/x64/Release  
  https://github.com/carlospolop/PEASS-ng/releases/download/20220202/winPEASany_ofs.exe  
- export/dump the password  
  + local computer account  
  + local computer account of the domain
  + laps

### (6) priv fixation
- tasks  
  + cron  
  + APT::Update::Pre-Invoke {"cmdOrBackConnect"}; >> /etc/apt/apt.conf.d/  
- clients  
  + /etc/nsswitch.conf (alternative passwd)  
  + ~/.ssh/authorized_keys  

### +) hiding actions (bypass ids)
- encoding  
  + base64 wrapper
- downgrade secure version
  + powershell -version 2

### +) research
- osint  
  + google dork
  + documentation  
  + github src  

### +) fuzzing
- arethmetic
  + https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Server%20Side%20Template%20Injection/Intruder/ssti.fuzz

### +) field expansion
- injection
  + nat slipstreaming
- access controll 
  + arp/dhcp/stp spoof
