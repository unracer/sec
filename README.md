
# TASK: WE NEED SHELL
# HOW? two ways = \<misconfig\> or \<reverse engineer\>

### *you should know, different tools give different result

##################
  
1) recon server
- ports
- directory
- subdomain
- headers of request / response
- src technologies

2) entry point web / netServices
#injection
-xss
-ssti
-sqli
-rce(os,lang)
-ssi
-xxe
-xpath
-jsoni
-xslt
#auth
-easy cred prediction
-insufficient session expiration
-weak password recovery
#access controll
-idor
-rfi
-lfi > conf > cred
-ssrf
-path traversal
-path prediction

3) recon os
- users
- environments
- processes

4) priv escalation
- files of admin user

5) priv fixation
- cron
- /etc/nsswitch.conf - alternative passwd
- ~/.ssh/authorized_keys
- APT::Update::Pre-Invoke {"cmdOrBackConnect"}; >> /etc/apt/apt.conf.d/

*6) hiding actions (bypass ids)
- base64 wrapper

*7) research
- 
