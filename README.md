TASK:  
- we need shell  

HOW:  
- \<misconfig\> TRY ALL FUNCTIONS    
- \<reverse engineer\>    

YOU SHOULD KNOW:  
- different tools of one task give different result 

LINKS:
- h4cktriks \<entry point\>

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
  
### (3) first access
- content delivery
  + pypi server
  
### (4) post exploitation
- simulators  
  + evilWinRm     
  + reverseShell (PayloadsAllTheThings)
  + <ps,rpc,smb,..>exec

### (5) recon os
- user  
  + net users  
  + passwd  
  + shadow  
- environment  
  + env  
- process  
  + tasklist  
  + ps aux  

### (6) priv escalation
- files of admin  
  + payloadallthethings PayloadsAllTheThings/Windows%20-%20Privilege%20Escalation.md   
  + icacls | wmic service list full | find /i "pathname"  
  + exploit/windows/local/service_permis  
  + dll hijacking  
  + winpeas https://github.com/carlospolop/PEASS-ng/releases/download/20220202/winPEASany_ofs.exe  
- export/dump the password  
  + local computer account  
  + local computer account of the domain
  + laps

### (7) priv fixation
- tasks  
  + cron  
  + APT::Update::Pre-Invoke {"cmdOrBackConnect"}; >> /etc/apt/apt.conf.d/  
- clients  
  + /etc/nsswitch.conf (alternative passwd)  
  + ~/.ssh/authorized_keys  

### +) hiding actions (bypass ids)
- encoding  
  + base64 wrapper
  + filter php
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

### +) exapmle
- ssti by pypi to rce   
- sqli > dev tools > save as cUrl > sqlmap -u '' --tables
