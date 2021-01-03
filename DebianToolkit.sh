#!/bin/bash

#Author : d4t4s3c
#Twitter: @d4t4s3c
#Email  : d4t4s3c@protonmail.com
#GitHub : www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
az="\033[1;34m"
cy="\033[0;96m"
nc="\e[0m"

#var
dir=$(pwd)
cu1='[+]'
cu2='[*]'
cu3='[i]'
cu4='[x]'

function checkroot(){
        clear
        echo ""
        echo -e "$az$cu2$a check root user $nc"
        sleep 4
    if [ "$(id -u)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b root $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b NO root $nc"
        sleep 4
        echo ""
        echo -e "\t$r$cu4 EXITING $nc"
        sleep 4
        echo ""
        exit 1
    fi  
}

function banner (){
        clear
        sleep 2
        echo -e "$b ┌═════════════════════════════════════════════════════════════════════┐"
        echo -e "$b ║$v ·▄▄▄▄  ▄▄▄ .▄▄▄▄· ▪   ▄▄▄·  ▐ ▄ ▄▄▄▄▄            ▄▄▌  ▄ •▄ ▪  ▄▄▄▄▄ $b║"
        echo -e "$b ║$v ██▪ ██ ▀▄.▀·▐█ ▀█▪██ ▐█ ▀█ •█▌▐█•██  ▪     ▪     ██•  █▌▄▌▪██ •██   $b║"
        echo -e "$b ║$v ▐█· ▐█▌▐▀▀▪▄▐█▀▀█▄▐█·▄█▀▀█ ▐█▐▐▌ ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  ▐▀▀▄·▐█· ▐█.▪ $b║"
        echo -e "$b ║$v ██. ██ ▐█▄▄▌██▄▪▐█▐█▌▐█ ▪▐▌██▐█▌ ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌▐█.█▌▐█▌ ▐█▌· $b║"
        echo -e "$b ║$v ▀▀▀▀▀•  ▀▀▀ ·▀▀▀▀ ▀▀▀ ▀  ▀ ▀▀ █▪ ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ ·▀  ▀▀▀▀ ▀▀▀  $b║"
        echo -e "$b ║$r                  Author  $b: $a d4t4s3c                                 $b║"
        echo -e "$b ║$r                  Twitter $b: $a @d4t4s3c                                $b║"
        echo -e "$b ║$r                  Email   $b: $a d4t4s3c@protonmail.com                  $b║"
        echo -e "$b ║$r                  GitHub  $b: $a www.github.com/d4t4s3c                  $b║"
        echo -e "$b └═════════════════════════════════════════════════════════════════════┘$nc"
        echo ""
        sleep 8
}

function python(){
        echo -e "$az$cu2$a check python $nc"
        sleep 4
        which python > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b python installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b python NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing python $nc"
        sleep 4
        echo ""
        apt-get install python -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b python installed $nc"
        sleep 4
        echo ""
    fi
}

function python3(){
        echo -e "$az$cu2$a check python3 $nc"
        sleep 4
        which python3 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b python3 installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b python3 NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing python3 $nc"
        sleep 4
        echo ""
        apt-get install python3 -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b python3 installed $nc"
        sleep 4
        echo ""
    fi
}

function pip(){
        echo -e "$az$cu2$a check pip $nc"
        sleep 4
        which pip > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b pip installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b pip NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing pip $nc"
        sleep 4
        echo ""
        apt-get install pip -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b pip installed $nc"
        sleep 4
        echo ""
    fi
}

function pip3(){
        echo -e "$az$cu2$a check pip3 $nc"
        sleep 4
        which pip3 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b pip3 installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b pip3 NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing pip3 $nc"
        sleep 4
        echo ""
        apt-get install pip3 -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b pip3 installed $nc"
        sleep 4
        echo ""
    fi
}

function ruby(){
        echo -e "$az$cu2$a check ruby $nc"
        sleep 4
        which ruby > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b ruby installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b ruby NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing ruby $nc"
        sleep 4
        echo ""
        apt-get install ruby -y && apt-get install ruby-dev -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b pip3 installed $nc"
        sleep 4
        echo ""
    fi
}

function go(){
        echo -e "$az$cu2$a check go $nc"
        sleep 4
        which go > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b go installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b go NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing go $nc"
        sleep 4
        echo ""
        apt-get install golang -y && apt-get install libcap-dev -y && apt-get install libpcap-dev > /dev/null 2>&1
        echo -e "\t$v$cu1$b go installed $nc"
        sleep 4
        echo ""
    fi
}

function xterm(){
        echo -e "$az$cu2$a check xterm $nc"
        sleep 4
        which xterm > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b xterm installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b xterm NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing xterm $nc"
        sleep 4
        echo ""
        apt-get install xterm -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b xterm installed $nc"
        sleep 4
        echo ""
    fi
}

function evil-winrm(){
        echo -e "$az$cu2$a check evil-winrm $nc"
        sleep 4
        which evil-winrm > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b evil-winrm installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b evil-winrm NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing evil-winrm $nc"
        sleep 4
        echo ""
        gem install evil-winrm > /dev/null 2>&1
        echo -e "\t$v$cu1$b evil-winrm installed $nc"
        sleep 4
        echo ""
    fi
}

function dnsutils(){
        echo -e "$az$cu2$a check dnsutils (dig, nslookup, nsupdate) $nc"
        sleep 4
        which nslookup > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b dnsutils (dig, nslookup, nsupdate) installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b dnsutils (dig, nslookup, nsupdate) NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing dnsutils (dig, nslookup, nsupdate) $nc"
        sleep 4
        echo ""
        apt-get install dnsutils -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b dnsutils (dig, nslookup, nsupdate) installed $nc"
        sleep 4
        echo ""
    fi
}

function tcpdump(){
        echo -e "$az$cu2$a check tcpdump $nc"
        sleep 4
        which tcpdump > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b tcpdump installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b tcpdump NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing tcpdump $nc"
        sleep 4
        echo ""
        apt-get install tcpdump -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b tcpdump installed $nc"
        sleep 4
        echo ""
    fi
}

function tmux(){
        echo -e "$az$cu2$a check tmux $nc"
        sleep 4
        which tmux > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b tmux installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b tmux NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing tmux $nc"
        sleep 4
        echo ""
        apt-get install tmux -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b tmux installed $nc"
        sleep 4
        echo ""
    fi
}

function nmap(){
        echo -e "$az$cu2$a check nmap $nc"
        sleep 4
        which nmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b nmap installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b nmap NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing nmap $nc"
        sleep 4
        echo ""
        apt-get install nmap -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b nmap installed $nc"
        sleep 4
        echo ""
    fi
}

function enum4linux(){
        echo -e "$az$cu2$a check enum4linux $nc"
        sleep 4
        which enum4linux > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b enum4linux installed $nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b enum4linux NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing enum4linux $nc"
        sleep 4
        echo ""
        apt-get install enum4linux -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b enum4linux installed $nc"
        sleep 4
        echo ""
    fi
}

function rlwrap(){
        echo -e "$az$cu2$a check rlwrap $nc"
        sleep 4
        which rlwrap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b rlwrap installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b rlwrap NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing rlwrap $nc"
        sleep 4
        echo ""
        apt-get install rlwrap -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b rlwrap installed $nc"
        sleep 4
        echo ""
    fi
}

function whatweb(){
        echo -e "$az$cu2$a check whatweb $nc"
        sleep 4
        which whatweb > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b whatweb installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b whatweb NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing whatweb $nc"
        sleep 4
        echo ""
        apt-get install whatweb -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b whatweb installed $nc"
        sleep 4
        echo ""
    fi
}

function hydra(){
        echo -e "$az$cu2$a check hydra $nc"
        sleep 4
        which hydra > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b hydra installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b hydra NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing hydra $nc"
        sleep 4
        echo ""
        apt-get install hydra -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b hydra installed $nc"
        sleep 4
        echo ""
    fi
}

function openvpn(){
        echo -e "$az$cu2$a check openvpn $nc"
        sleep 4
        which openvpn > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b openvpn installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b openvpn NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing openvpn $nc"
        sleep 4
        echo ""
        apt-get install openvpn -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b openvpn installed $nc"
        sleep 4
        echo ""
    fi
}

function apache2(){
        echo -e "$az$cu2$a check apache2 $nc"
        sleep 4
        which apache2 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b apache2 installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b apache2 NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing apache2 $nc"
        sleep 4
        echo ""
        apt-get install apache2 -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b apache2 installed $nc"
        sleep 4
        echo ""
    fi
}

function wpscan(){
        echo -e "$az$cu2$a check wpscan $nc"
        sleep 4
        which wpscan > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b wpscan installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b wpscan NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing wpscan $nc"
        sleep 4
        echo ""
        apt-get install wpscan -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b wpscan installed $nc"
        sleep 4
        echo ""
    fi
}

function locate(){
        echo -e "$az$cu2$a check locate $nc"
        sleep 4
        which locate > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b locate installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b locate NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing locate $nc"
        sleep 4
        echo ""
        apt-get install locate -y && updatedb > /dev/null 2>&1
        echo -e "\t$v$cu1$b locate installed $nc"
        sleep 4
        echo ""
    fi
}

function curl(){
        echo -e "$az$cu2$a check curl $nc"
        sleep 4
        which curl > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b curl installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b curl NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing curl $nc"
        sleep 4
        echo ""
        apt-get install curl -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b curl installed $nc"
        sleep 4
        echo ""
    fi
}

function ftp(){
        echo -e "$az$cu2$a check ftp $nc"
        sleep 4
        which ftp > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b ftp installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b ftp NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing ftp $nc"
        sleep 4
        echo ""
        apt-get install ftp -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b ftp installed $nc"
        sleep 4
        echo ""
    fi
}

function cewl(){
        echo -e "$az$cu2$a check cewl $nc"
        sleep 4
        which cewl > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b cewl installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b cewl NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing cewl $nc"
        sleep 4
        echo ""
        apt-get install cewl -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b cewl installed $nc"
        sleep 4
        echo ""
    fi
}

function cadaver(){
        echo -e "$az$cu2$a check cadaver $nc"
        sleep 4
        which cadaver > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b cadaver installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b cadaver NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing cadaver $nc"
        sleep 4
        echo ""
        apt-get install cadaver -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b cadaver installed $nc"
        sleep 4
        echo ""
    fi
}

function xclip(){
        echo -e "$az$cu2$a check xclip $nc"
        sleep 4
        which xclip > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b xclip installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b xclip NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing xclip $nc"
        sleep 4
        echo ""
        apt-get install xclip -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b xclip installed $nc"
        sleep 4
        echo ""
    fi
}

function metasploit(){
        echo -e "$az$cu2$a check metasploit $nc"
        sleep 4
        which msfconsole > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b metasploit installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b metasploit NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing metasploit $nc"
        sleep 4
        echo ""
        cd /opt
        wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run
        chmod +x metasploit-latest-linux-x64-installer.run
        xterm -hold -e "./metasploit-latest-linux-x64-installer.run" &
        cd $dir
        echo -e "\t$v$cu1$b metasploit installed $nc"
        sleep 4
        echo ""
    fi
}

function crunch(){
        echo -e "$az$cu2$a check crunch $nc"
        sleep 4
        which crunch > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b crunch installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b crunch NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing crunch $nc"
        sleep 4
        echo ""
        apt-get install crunch -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b crunch installed $nc"
        sleep 4
        echo ""
    fi
}

function putty(){
        echo -e "$az$cu2$a check putty $nc"
        sleep 4
        which putty > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b putty installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b putty NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing putty $nc"
        sleep 4
        echo ""
        apt-get install putty -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b putty installed $nc"
        sleep 4
        echo ""
    fi
}

function smbclient(){
        echo -e "$az$cu2$a check smbclient $nc"
        sleep 4
        which smbclient > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b smbclient installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b smbclient NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing smbclient $nc"
        sleep 4
        echo ""
        apt-get install smbclient -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b smbclient installed $nc"
        sleep 4
        echo ""
    fi
}

function smbmap(){
        echo -e "$az$cu2$a check smbmap $nc"
        sleep 4
        which smbmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b smbmap installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b smbmap NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing smbmap $nc"
        sleep 4
        echo ""
        apt-get install smbmap -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b smbmap installed $nc"
        sleep 4
        echo ""
    fi
}

function masscan(){
        echo -e "$az$cu2$a check masscan $nc"
        sleep 4
        which masscan > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b masscan installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b masscan NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing masscan $nc"
        sleep 4
        echo ""
        apt-get install masscan -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b masscan installed $nc"
        sleep 4
        echo ""
    fi
}

function sqlmap(){
        echo -e "$az$cu2$a check sqlmap $nc"
        sleep 4
        which sqlmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b sqlmap installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b sqlmap NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing sqlmap $nc"
        sleep 4
        echo ""
        apt-get install masscan -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b sqlmap installed $nc"
        sleep 4
        echo ""
    fi
}

function wfuzz(){
        echo -e "$az$cu2$a check wfuzz $nc"
        sleep 4
        which wfuzz > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b wfuzz installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b wfuzz NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing wfuzz $nc"
        sleep 4
        echo ""
        apt-get install wfuzz -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b wfuzz installed $nc"
        sleep 4
        echo ""
    fi
}

function net-tools(){
        echo -e "$az$cu2$a check net-tools $nc"
        sleep 4
        which ifconfig > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b net-tools installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b net-tools NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing net-tools $nc"
        sleep 4
        echo ""
        apt-get install net-tools -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b net-tools installed $nc"
        sleep 4
        echo ""
    fi
}

function searchsploit(){
        echo -e "$az$cu2$a check searchsploit $nc"
        sleep 4
        which searchsploit > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b searchsploit installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b searchsploit NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing searchsploit $nc"
        sleep 4
        echo ""
        apt-get install exploitdb -y > /dev/null 2>&1
        apt-get install exploitdb-bin-sploits exploitdb-papers -y > /dev/null 2>&1
        git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
        sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc
        ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
        echo -e "\t$v$cu1$b searchsploit installed $nc"
        sleep 4
        echo ""
    fi
}

function sublime-text(){
        echo -e "$az$cu2$a check sublime-text $nc"
        sleep 4
        which subl > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b sublime-text installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b sublime-text NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing sublime-text $nc"
        sleep 4
        echo ""
        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        apt-get install apt-transport-https -y > /dev/null 2>&1
        echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        apt-get update -y > /dev/null 2>&1
        apt-get install sublime-text -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b sublime-text installed $nc"
        sleep 4
        echo ""
    fi
}

function zsh(){
        echo -e "$az$cu2$a check zsh $nc"
        sleep 4
        which zsh > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b zsh installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b zsh NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing zsh $nc"
        sleep 4
        echo ""
        apt-get install zsh -y > /dev/null 2>&1
        apt-get install zsh-autosuggestions -y > /dev/null 2>&1
        apt-get install zsh-syntax-highlighting -y > /dev/null 2>&1
        echo -e "\t$v$cu1$b zsh installed $nc"
        sleep 4
        echo ""
    fi
}

function john(){
        echo -e "$az$cu2$a check john $nc"
        sleep 4
        which john > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b john installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b john NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing john $nc"
        sleep 4
        echo ""
        cd /opt
        git clone "https://github.com/magnumripper/JohnTheRipper.git"
        cd JohnTheRipper/src
        ./configure && make
        cd $dir
        sleep 4
        echo ""
    fi
}

function netdiscover(){
        echo -e "$az$cu2$a check netdiscover $nc"
        sleep 4
        which netdiscover > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b netdiscover installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b netdiscover NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing netdiscover $nc"
        sleep 4
        echo ""
        apt-get install netdiscover -y > /dev/null 2>&1
        sleep 4
        echo ""
    fi
}

function arp-scan(){
        echo -e "$az$cu2$a check arp-scan $nc"
        sleep 4
        which arp-scan > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b arp-scan installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b arp-scan NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing arp-scan $nc"
        sleep 4
        echo ""
        apt-get install arp-scan -y > /dev/null 2>&1
        sleep 4
        echo ""
    fi
}

function wine(){
        echo -e "$az$cu2$a check wine $nc"
        sleep 4
        which wine > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b wine installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b wine NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing wine $nc"
        sleep 4
        echo ""
        apt-get install wine -y > /dev/null 2>&1
        apt-get install wine32 -y > /dev/null 2>&1
        dpkg --add-architecture i386
        sleep 4
        echo ""
    fi
}

function wireshark(){
        echo -e "$az$cu2$a check wireshark $nc"
        sleep 4
        which wireshark > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$v$cu1$b wireshark installed$nc"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$r$cu4$b wireshark NO installed $nc"
        sleep 4
        echo ""
        echo -e "\t$az$cu2$b installing wireshark $nc"
        sleep 4
        echo ""
        apt-get install wireshark -y > /dev/null 2>&1
        sleep 4
        echo ""
    fi
}

tput civis
checkroot
banner
python
python3
pip
pip3
ruby
go
xterm
evil-winrm
dnsutils
tcpdump
tmux
nmap
enum4linux
rlwrap
whatweb
hydra
openvpn
apache2
wpscan
locate
curl
ftp
cewl
cadaver
xclip
metasploit
crunch
putty
smbclient
smbmap
masscan
sqlmap
wfuzz
net-tools
searchsploit
sublime-text
zsh
john
netdiscover
arp-scan
wine
wireshark
tput cnorm
exit 0
