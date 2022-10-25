IDEA: 
- make abstraction for undersanding of inf0s3c

UNDERSTANDING (for non-eng country):
- vu1n3rs is action witch you can make, but is not a magic steps

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
### (0) access network (inguz@tg)
- simple access
  + (Blackhole, Wormhole) - Abusing Dynamic Routing (OSPF, EIGRP, RIP, IS-IS)
  + (Malicious traffic Redirection) - Abusing FHRP Protocols (HSRP, VRRP, GLBP)
  + (evasion NAC) - Bypassing 802.1X
  + (Abusing DMZ) - Double Tagging
  + (Manipulation of VLAN Databases) - VTP Injection
- recon  
  + (Information Gathering, DoS) - CDP x LLDP Attacks
  + DTP Switch Spoofing
- mitm  
  + MAC Spoofing
  + CAM Table Overflow
  + STP Root Hijacking
  + (DNS Spoofing) - DHCP Spoofing
  + ICMP Redirect
- dos  
  +
- hidingActions  
  + (VLAN Segmentation Bypass) - DTP Switch Spoofing
  + (Bypassing IPS/IDS, Firewall) - IP Spoofing

### (1) recon server
- ports
- directory of tech(apache,cms,framework..)
- subdomain
- headers of request / response
  + HOST: FUZZ.nofuzz.nofuzz
- technologies src

### (2) entry point net
- auth
  + easy cred
- access control  
  + lfi

### (2.1) entry point web
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

### (3) priv fixation
- tasks  
  + cron  
  + APT::Update::Pre-Invoke {"cmdOrBackConnect"}; >> /etc/apt/apt.conf.d/  
- clients  
  + /etc/nsswitch.conf (alternative passwd)  
  + ~/.ssh/authorized_keys or ~/.ssh/\<id_rsa\>  

### (4) post exploitation
- simulators  
  + evilWinRm     
  + reverseShell (PayloadsAllTheThings)
  + <ps,rpc,smb,..>exec

### (4 too) recon os
- user  
  + net users  
  + passwd  
  + shadow  
- environment  
  + env  
- process  
  + tasklist  
  + ps aux  

### (5) priv escalation
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

### +) hiding actions (bypass ids)
- encoding  
  + base64 wrapper
  + filter php
- downgrade secure version
  + powershell -version 2

### +) first access helper
- content delivery
  + pypi server

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
- ffuf -w subdomains-top1million-5000.txt -u http://preprod-FUZZ.trick.htb (search subdns and mix with recursion)

### +) spec tools
- user port number in hacktricks

COMTRIBUTION - format
### (step number) step  
- space (injection,auth..)
 + action (lfi,rce..)
 

