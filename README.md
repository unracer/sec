
# TASK: WE NEED SHELL
# HOW? two ways = \<misconfig\> or \<reverse engineer\>

## *you should know, different tools give different result

  
### (1) recon server
- ports
- directory of tech
- subdomain
- headers of request / response
- technologies src

### (2) entry point web / netServices
###### injection
- xss
- ssti
- sqli
- rce(os,lang)
- ssi
- xxe
- xpath
- jsoni
- xslt
###### auth
- easy cred prediction
- insufficient session expiration
- weak password recovery
###### access controll
- idor
- rfi
- lfi > conf > cred
- ssrf
- path traversal
- path prediction

### (3) recon os
- user  
  net users / passwd, shadow
- environment  
  env / env
- processes  
  tasklist / ps aux

### (4) priv escalation
- files of admin user

### (5) priv fixation
- cron
- /etc/nsswitch.conf (alternative passwd)
- ~/.ssh/authorized_keys
- APT::Update::Pre-Invoke {"cmdOrBackConnect"}; >> /etc/apt/apt.conf.d/

### +) hiding actions (bypass ids)
- base64 wrapper

### +) research
- documentation
- github src
