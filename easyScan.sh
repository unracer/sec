#!/bin/bash

while getopts i:d: flag
do
    case "${flag}" in
        i) ip=${OPTARG};;
        d) domain=${OPTARG};;
    esac
done

if [ -z "$domain"  ]
then
    echo $(date +"%T") "sudo sh easyScan.sh -i <ip> -d <domain>";
else
    echo $(date +"%T");
    sudo echo $ip $domain >> /etc/hosts;
    echo "\033[32mPORTS\033[00m";
    nmap -p- -T5 --min-rate 2000 -n $domain;
    sudo nmap -T5 -n -sU -p- --min-rate 2000 $domain;
    echo "\033[32mDIRS\033[00m";
    dirsearch -u $domain -t 256 -w /home/kali/Downloads/enum/directory-list-lowercase-2.3-medium.txt;
    echo "\033[32mDOMAIN\033[00m";
    gobuster vhost --url $domain -w /home/kali/Downloads/enum/subdomains-top1million-110000.txt -t 64;
    echo "\033[32mHEADERS\033[00m";
    nc $domain 80;
    curl -I $domain;

    echo $(date +"%T") "\033[32mfinish\033[00m" ;
fi
