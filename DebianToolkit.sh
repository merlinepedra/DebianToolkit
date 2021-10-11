#!/bin/bash

#colors
declare -r White="\e[97m"
declare -r Red="\e[31m"
declare -r GreenLight="\e[92m"
declare -r YellowLight="\e[93m"
declare -r CyanLight="\e[96m"
declare -r End="\e[0m"

#var
var1=$(pwd)
var2='[+]'
var3='[*]'
var4='[i]'
var5='[x]'

function checkroot(){
        clear
        echo ""
        echo -e "$YellowLight$var4$White check root user $End"
        sleep 4
    if [ "$(id -u)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White root $End"
        sleep 4
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White NO root $End"
        sleep 4
        echo ""
        exit 1
    fi  
}

function banner (){
        clear
        sleep 2
        echo ""
        echo -e "$White ┌═══════════════════════════════════════════════════════════════════════┐$End"
        echo -e "$White ║$GreenLight  ·▄▄▄▄  ▄▄▄ .▄▄▄▄· ▪   ▄▄▄·  ▐ ▄ ▄▄▄▄▄            ▄▄▌  ▄ •▄ ▪  ▄▄▄▄▄  $End║"
        echo -e "$White ║$GreenLight  ██▪ ██ ▀▄.▀·▐█ ▀█▪██ ▐█ ▀█ •█▌▐█•██  ▪     ▪     ██•  █▌▄▌▪██ •██    $End║"
        echo -e "$White ║$GreenLight  ▐█· ▐█▌▐▀▀▪▄▐█▀▀█▄▐█·▄█▀▀█ ▐█▐▐▌ ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  ▐▀▀▄·▐█· ▐█.▪  $End║"
        echo -e "$White ║$GreenLight  ██. ██ ▐█▄▄▌██▄▪▐█▐█▌▐█ ▪▐▌██▐█▌ ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌▐█.█▌▐█▌ ▐█▌·  $End║"
        echo -e "$White ║$GreenLight  ▀▀▀▀▀•  ▀▀▀ ·▀▀▀▀ ▀▀▀ ▀  ▀ ▀▀ █▪ ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ ·▀  ▀▀▀▀ ▀▀▀   $End║"
        echo -e "$White └═══════════════════════════════════════════════════════════════════════┘$End"
        echo ""
        echo ""
        sleep 4
}

function python(){
        echo -e "$YellowLight$var4$White check python $End"
        sleep 2
        which python > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White python installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White python NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing python $End"
        sleep 2
        echo ""
        apt-get install python -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White python installed $End"
        sleep 2
        echo ""
    fi
}

function python3(){
        echo -e "$YellowLight$var4$White check python3 $End"
        sleep 2
        which python3 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White python3 installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White python3 NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing python3 $End"
        sleep 2
        echo ""
        apt-get install python3 -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White python3 installed $End"
        sleep 2
        echo ""
    fi
}

function pip(){
        echo -e "$YellowLight$var4$White check pip $End"
        sleep 2
        which pip > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White pip installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White pip NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing pip $End"
        sleep 2
        echo ""
        apt-get install python-pip -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White pip installed $End"
        sleep 2
        echo ""
    fi
}

function pip3(){
        echo -e "$YellowLight$var4$White check pip3 $End"
        sleep 2
        which pip3 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White pip3 installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White pip3 NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing pip3 $End"
        sleep 2
        echo ""
        apt-get install python3-pip -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White pip3 installed $End"
        sleep 2
        echo ""
    fi
}


function ruby(){
        echo -e "$YellowLight$var4$White check ruby $End"
        sleep 2
        which ruby > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White ruby installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White ruby NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing ruby $End"
        sleep 2
        echo ""
        apt-get install ruby -y && apt-get install ruby-dev -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White ruby installed $End"
        sleep 2
        echo ""
    fi
}

function xterm(){
        echo -e "$YellowLight$var4$White check xterm $End"
        sleep 2
        which xterm > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White xterm installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White xterm NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing xterm $End"
        sleep 2
        echo ""
        apt-get install xterm -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White xterm installed $End"
        sleep 2
        echo ""
    fi
}

function evil-winrm(){
        echo -e "$YellowLight$var4$White check evil-winrm $End"
        sleep 2
        which evil-winrm > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White evil-winrm installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White evil-winrm NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing evil-winrm $End"
        sleep 2
        echo ""
        gem install evil-winrm > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White evil-winrm installed $End"
        sleep 2
        echo ""
    fi
}

function dnsutils(){
        echo -e "$YellowLight$var4$White check dnsutils (dig, nslookup, nsupdate) $End"
        sleep 2
        which nslookup > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White dnsutils (dig, nslookup, nsupdate) installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White dnsutils (dig, nslookup, nsupdate) NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing dnsutils (dig, nslookup, nsupdate) $End"
        sleep 2
        echo ""
        apt-get install dnsutils -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White dnsutils (dig, nslookup, nsupdate) installed $End"
        sleep 2
        echo ""
    fi
}

function tcpdump(){
        echo -e "$YellowLight$var4$White check tcpdump $End"
        sleep 2
        which tcpdump > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White tcpdump installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White tcpdump NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing tcpdump $End"
        sleep 2
        echo ""
        apt-get install tcpdump -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White tcpdump installed $End"
        sleep 2
        echo ""
    fi
}

function tmux(){
        echo -e "$YellowLight$var4$White check tmux $End"
        sleep 2
        which tmux > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White tmux installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White tmux NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing tmux $End"
        sleep 2
        echo ""
        apt-get install tmux -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White tmux installed $End"
        sleep 2
        echo ""
    fi
}

function nmap(){
        echo -e "$YellowLight$var4$White check nmap $End"
        sleep 2
        which nmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White nmap installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White nmap NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing nmap $End"
        sleep 2
        echo ""
        apt-get install nmap -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White nmap installed $End"
        sleep 2
        echo ""
    fi
}

function rlwrap(){
        echo -e "$YellowLight$var4$White check rlwrap $End"
        sleep 2
        which rlwrap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White rlwrap installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White rlwrap NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing rlwrap $End"
        sleep 2
        echo ""
        apt-get install rlwrap -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White rlwrap installed $End"
        sleep 2
        echo ""
    fi
}

function whatweb(){
        echo -e "$YellowLight$var4$White check whatweb $End"
        sleep 2
        which whatweb > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White whatweb installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White whatweb NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing whatweb $End"
        sleep 2
        echo ""
        apt-get install whatweb -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White whatweb installed $End"
        sleep 2
        echo ""
    fi
}

function hydra(){
        echo -e "$YellowLight$var4$White check hydra $End"
        sleep 2
        which hydra > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White hydra installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White hydra NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing hydra $End"
        sleep 2
        echo ""
        apt-get install hydra -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White hydra installed $End"
        sleep 2
        echo ""
    fi
}

function openvpn(){
        echo -e "$YellowLight$var4$White check openvpn $End"
        sleep 2
        which openvpn > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White openvpn installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White openvpn NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing openvpn $End"
        sleep 2
        echo ""
        apt-get install openvpn -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White openvpn installed $End"
        sleep 2
        echo ""
    fi
}

function apache2(){
        echo -e "$YellowLight$var4$White check apache2 $End"
        sleep 2
        which apache2 > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White apache2 installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White apache2 NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing apache2 $End"
        sleep 2
        echo ""
        apt-get install apache2 -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White apache2 installed $End"
        sleep 2
        echo ""
    fi
}

function locate(){
        echo -e "$YellowLight$var4$White check locate $End"
        sleep 2
        which locate > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White locate installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White locate NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing locate $End"
        sleep 2
        echo ""
        apt-get install locate -y && updatedb > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White locate installed $End"
        sleep 2
        echo ""
    fi
}


function curl(){
        echo -e "$YellowLight$var4$White check curl $End"
        sleep 2
        which curl > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White curl installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White curl NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing curl $End"
        sleep 2
        echo ""
        apt-get install curl -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White curl installed $End"
        sleep 2
        echo ""
    fi
}

function ftp(){
        echo -e "$YellowLight$var4$White check ftp $End"
        sleep 2
        which ftp > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White ftp installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White ftp NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing ftp $End"
        sleep 2
        echo ""
        apt-get install ftp -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White ftp installed $End"
        sleep 2
        echo ""
    fi
}

function cewl(){
        echo -e "$YellowLight$var4$White check cewl $End"
        sleep 2
        which cewl > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White cewl installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White cewl NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing cewl $End"
        sleep 2
        echo ""
        apt-get install cewl -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White cewl installed $End"
        sleep 2
        echo ""
    fi
}

function cadaver(){
        echo -e "$YellowLight$var4$White check cadaver $End"
        sleep 2
        which cadaver > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White cadaver installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White cadaver NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing cadaver $End"
        sleep 2
        echo ""
        apt-get install cadaver -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White cadaver installed $End"
        sleep 2
        echo ""
    fi
}

function xclip(){
        echo -e "$YellowLight$var4$White check xclip $End"
        sleep 2
        which xclip > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White xclip installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White xclip NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing xclip $End"
        sleep 2
        echo ""
        apt-get install xclip -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White xclip installed $End"
        sleep 2
        echo ""
    fi
}

function metasploit(){
        echo -e "$YellowLight$var4$White check metasploit $End"
        sleep 2
        which msfconsole > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White metasploit installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White metasploit NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing metasploit $End"
        sleep 2
        echo ""
        cd /opt
        wget -q "https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run"
        chmod +x metasploit-latest-linux-x64-installer.run
        /usr/bin/xterm -hold -e "./metasploit-latest-linux-x64-installer.run" &
        sleep 10
        cd $var1
        echo -e "\t$GreenLight$var2$White metasploit installed $End"
        sleep 2
        echo ""
    fi
}

function crunch(){
        echo -e "$YellowLight$var4$White check crunch $End"
        sleep 2
        which crunch > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White crunch installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White crunch NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing crunch $End"
        sleep 2
        echo ""
        apt-get install crunch -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White crunch installed $End"
        sleep 2
        echo ""
    fi
}

function putty(){
        echo -e "$YellowLight$var4$White check putty $End"
        sleep 2
        which putty > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White putty installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White putty NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing putty $End"
        sleep 2
        echo ""
        apt-get install putty -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White putty installed $End"
        sleep 2
        echo ""
    fi
}

function smbclient(){
        echo -e "$YellowLight$var4$White check smbclient $End"
        sleep 2
        which smbclient > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White smbclient installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White smbclient NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing smbclient $End"
        sleep 2
        echo ""
        apt-get install smbclient -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White smbclient installed $End"
        sleep 2
        echo ""
    fi
}

function smbmap(){
        echo -e "$YellowLight$var4$White check smbmap $End"
        sleep 2
        which smbmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White smbmap installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White smbmap NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing smbmap $End"
        sleep 2
        echo ""
        apt-get install smbmap -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White smbmap installed $End"
        sleep 2
        echo ""
    fi
}

function masscan(){
        echo -e "$YellowLight$var4$White check masscan $End"
        sleep 2
        which masscan > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White masscan installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White masscan NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing masscan $End"
        sleep 2
        echo ""
        apt-get install masscan -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White masscan installed $End"
        sleep 2
        echo ""
    fi
}

function sqlmap(){
        echo -e "$YellowLight$var4$White check sqlmap $End"
        sleep 2
        which sqlmap > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White sqlmap installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White sqlmap NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing sqlmap $End"
        sleep 2
        echo ""
        apt-get install sqlmap -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White sqlmap installed $End"
        sleep 2
        echo ""
    fi
}

function wfuzz(){
        echo -e "$YellowLight$var4$White check wfuzz $End"
        sleep 2
        which wfuzz > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White wfuzz installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White wfuzz NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing wfuzz $End"
        sleep 2
        echo ""
        apt-get install wfuzz -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White wfuzz installed $End"
        sleep 2
        echo ""
    fi
}

function net-tools(){
        echo -e "$YellowLight$var4$White check net-tools $End"
        sleep 2
        which ifconfig > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White net-tools installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White net-tools NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing net-tools $End"
        sleep 2
        echo ""
        apt-get install net-tools -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White net-tools installed $End"
        sleep 2
        echo ""
    fi
}

function searchsploit(){
        echo -e "$YellowLight$var4$White check searchsploit $End"
        sleep 2
        which searchsploit > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White searchsploit installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White searchsploit NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing searchsploit $End"
        sleep 2
        echo ""
        apt-get install exploitdb -y > /dev/null 2>&1
        apt-get install exploitdb-bin-sploits exploitdb-papers -y > /dev/null 2>&1
        git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
        sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc
        ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
        echo -e "\t$GreenLight$var2$White searchsploit installed $End"
        sleep 2
        echo ""
    fi
}

function zsh(){
        echo -e "$YellowLight$var4$White check zsh $End"
        sleep 2
        which zsh > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White zsh installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White zsh NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing zsh $End"
        sleep 2
        echo ""
        apt-get install zsh -y > /dev/null 2>&1
        apt-get install zsh-autosuggestions -y > /dev/null 2>&1
        apt-get install zsh-syntax-highlighting -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White zsh installed $End"
        sleep 2
        echo ""
    fi
}

function john(){
        echo -e "$YellowLight$var4$White check john $End"
        sleep 2
        which john > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White john installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White john NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing john $End"
        sleep 2
        echo ""
        cd /opt
        git clone "https://github.com/magnumripper/JohnTheRipper.git"
        cd JohnTheRipper/src
        ./configure && make
        cd $var1
        echo -e "\t$GreenLight$var2$White john installed $End"
        sleep 2
        echo ""
    fi
}

function netdiscover(){
        echo -e "$YellowLight$var4$White check netdiscover $End"
        sleep 2
        which netdiscover > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White netdiscover installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White netdiscover NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing netdiscover $End"
        sleep 2
        echo ""
        apt-get install netdiscover -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White netdiscover installed $End"
        sleep 2
        echo ""
    fi
}

function arp-scan(){
        echo -e "$YellowLight$var4$White check arp-scan $End"
        sleep 2
        which arp-scan > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White arp-scan installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White arp-scan NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing arp-scan $End"
        sleep 2
        echo ""
        apt-get install arp-scan -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White arp-scan installed $End"
        sleep 2
        echo ""
    fi
}

function wireshark(){
        echo -e "$YellowLight$var4$White check wireshark $End"
        sleep 2
        which wireshark > /dev/null 2>&1
    if [ "$(echo $?)" == "0" ]; then
        echo ""
        echo -e "\t$GreenLight$var2$White wireshark installed $End"
        sleep 2
        echo ""
    else
        echo ""
        echo -e "\t$Red$var5$White wireshark NO installed $End"
        sleep 2
        echo ""
        echo -e "$YellowLight$var4$White installing wireshark $End"
        sleep 2
        echo ""
        apt-get install wireshark -y > /dev/null 2>&1
        echo -e "\t$GreenLight$var2$White wireshark installed $End"
        sleep 2
        echo ""
    fi
}

function start(){
checkroot
banner
python
python3
pip
pip3
ruby
xterm
evil-winrm
dnsutils
tcpdump
tmux
nmap
rlwrap
whatweb
hydra
openvpn
apache2
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
zsh
john
netdiscover
arp-scan
wireshark
exit 0
}

start
