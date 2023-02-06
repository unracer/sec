IDEA: 
- make abstraction for undersanding of inf0s3c

UNDERSTANDING (for non-eng country):
- vu1n3rs is action witch you can make, but is not a magic steps
- also you should think figuratively and abstract things that you think about (also helpfull in real life)

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
  + nat slipstreaming
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
  + DHCP Exhaution  
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
  + weak config (no password)
- access control  
  + lfi
    * backups
    * db's (read with DBbrowser)
    * system configuration files (etc)

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
  + xspa
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
  + \<site-technologie\> configs

### (4) post exploitation
- simulators  
  + evilWinRm     
  + reverseShell (PayloadsAllTheThings)
  + <ps,rpc,smb,..>exec

### (4.1) recon os
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
  + linpeas
  + Kernel exploits
  + Application vulnerabilities
  + Misconfigurations such as weak file permissions
  + Abuse of sudo
  + Abuse of setuid and setgidCron jobs
  + winpeas  
  + PayloadsAllTheThings/Windows%20-%20Privilege%20Escalation.md
  + icacls | wmic service list full | find /i "pathname"  
  + exploit/windows/local/service_permis  
  + dll hijacking  
- export/dump the password  
  + local computer account  
  + local computer account of the domain
  + laps

### +) hiding actions (bypass IDetectS/IPrevS)
- encoding  
  + base64 wrapper
  + filter php,etc.
- downgrade secure version
  + powershell -version 2 (ex.)

### +) first access helper
- content delivery
  + pypi server

### +) research
- OpenSrcINT     
  + github  
  + googleDork
  + bruteTechDocSite

### +) fuzzing
- try arethmetic exec
  + https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Server%20Side%20Template%20Injection/Intruder/ssti.fuzz
  
### +) ex
- broserDevTools-net-copyAsCUrl sqlmap -u '\<cUrl\>'

#

COMTRIBUTION - format
### (step number) step  
- space (injection,auth..)  
  + action (lfi,rce..)  
 

