#!/usr/bin/bash
##############################################################
##                    COLORING YOUR SHELL                   ##
##############################################################
white="\033[1;37m"                                          ##
grey="\033[0;37m"                                           ##
purple="\033[0;35m"                                         ##
red="\e[91m"                                                ##
green="\e[92m"                                              ##
yellow="\e[93m"                                             ##
lime="\033[01;32m"                                          ##
cyan="\033[0;36m"                                           ##
cafe="\033[0;33m"                                           ##
fiuscha="\033[0;35m"                                        ##
orange="\033[0;33m"                                         ##
lred="\e[1;31m"                                             ##
nc="\e[0m"                                                  ##
##############################################################
mkdir -p R4W_RESULT
banner(){
    clear
    printf "${white}"
    printf "          _.-/')\n"
    printf "         // / / )\n"
    printf "      .=// / / / )\n"
    printf "     //'/ / / / /\n"
    printf "    // /     ' /  All Religion\n"
    printf "   ||    ${yellow}🗲${white}   /   Teachin Us To\n"
    printf "    \\\        /    Loving Each Other.\n"
    printf "     ))    .'     \n"
    printf "    //    /       ${yellow}REST 4 WHAT${white} TEAM\n"
    printf "         /\n\n"
}
timing=$(date +"%H:%M:%S")
banner
printf "${green}[>]${white} Input List : "
read list
printf "${green}[!]${white} Threads : "
read threads
printf "${green}[o]${white} Output (${yellow}result.txt${white}) : "
read outputList
banner
printf "${white}[${yellow}!${white}] ${yellow}DELETE DUPLICATE AND SORTING..."
$(cat $list | uniq -u | shuf >> temp_$list)
sleep 2
wait
if [[ -f countString ]]; then
    rm countString
fi
if [[ -f *_$outputList ]]; then
    banner
    printf "${red}FILE ${yellow}$outputList ${red}EXIST !!!\nCAREFUL DUMBASS !\n\n"
    exit
fi
touch countString
touch R4W_RESULT/COMCAST_$outputList
touch R4W_RESULT/YAHOO_$outputList
touch R4W_RESULT/GOOGLE_$outputList
touch R4W_RESULT/OFFICE365_$outputList
touch R4W_RESULT/HOTMAIL_$outputList
touch R4W_RESULT/YANDEX_$outputList
touch R4W_RESULT/ICLOUD_$outputList
touch R4W_RESULT/NETEASE_$outputList
touch R4W_RESULT/LIBERO_$outputList
touch R4W_RESULT/HSBC_$outputList
touch R4W_RESULT/GMX_$outputList
touch R4W_RESULT/AOL_$outputList
touch R4W_RESULT/VERIZON_$outputList
touch R4W_RESULT/COX_$outputList
touch R4W_RESULT/EARTHLINK_$outputList
touch R4W_RESULT/QQ_$outputList
touch R4W_RESULT/UNKNOWN_$outputList
countLine=$(cat temp_$list | wc -l)
stringLine=$(cat countString | wc -l)
function validateMail() {
    mailwarna=
    if [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "comcast" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/COMCAST_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${purple}COMCAST${white}] ${lime}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "office365" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/OFFICE365_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${red}OFFICE365${white}] ${white}$mail${white}\n"

    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "yahoo.co.jp" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/YAHOO-JAPAN_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${lime}YAHOO.JP${white}] ${white}$mail${white}\n"

    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "yahoo" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/YAHOO_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${green}YAHOO${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "microsoft" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/HOTMAIL_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${yellow}HOTMAIL/MSN/LIVE${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "google" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/GOOGLE_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${lime}"GOOGLE"${white}] ${white}$mail${white}\n"
         
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "yandex" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/GOOGLE_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${cyan}YANDEX${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "icloud.com" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/ICLOUD_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${cafe}ICLOUD${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "netease.com" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/NETEASE_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${fiuscha}NETEASE${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "libero.it" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/LIBEROIT_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${orange}LIBERO.IT${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "optusnet.com.au" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/HSBCGLOBAL_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${purple}HSBC${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "gmx.net" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/GMX_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${orange}GMX${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "aol" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/AOL_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${lime}AOL${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "verizon" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/VERIZON_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${cyan}VERIZON${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "cox.net" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/COX_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${blue}COX${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "earthlink.net" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/EARTHLINK_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${orange}EARTHLINK${white}] ${white}$mail${white}\n"
        
    elif [[ $(curl -sL "https://import.xfinity.com/api/auth/capabilities?email=$mail&scope=emailmigration" | jq .provider | tr -d '"') =~ "qq.com" ]]; then
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/QQ_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${yellow}QQ${white}] ${white}$mail${white}\n"
        
    else
        echo "0" >> countString
        echo "$mail" >> R4W_RESULT/UNKNOWN_$outputList
        printf "${yellow}🗲${white} [$(cat countString | wc -l)${white} / ${yellow}$countLine${white}] [${lred}UNKNOWN${white}] ${lred}$mail${white}\n"
        
    fi         
}
banner
printf "${lime}===${yellow}! ${white}START [$timing]${yellow} !${lime}================================${white}\n"
for mail in $(cat temp_$list); do
    ((cthread=cthread%threads)); ((cthread++==0)) && wait
    validateMail &
done
rm temp_$list
rm countString
wait
printf "${lime}===${yellow}! ${white}FINISH [$timing]${yellow} !${lime}================================${white}\n"
printf "COMCAST ${white}   : $(cat R4W_RESULT/COMCAST_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "YAHOO ${white}     : $(cat R4W_RESULT/YAHOO_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "GOOGLE ${white}    : $(cat R4W_RESULT/GOOGLE_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "OFFICE365 ${white} : $(cat R4W_RESULT/OFFICE365_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "HOTMAIL ${white}   : $(cat R4W_RESULT/HOTMAIL_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "YANDEX ${white}    : $(cat R4W_RESULT/YANDEX_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "ICLOUD ${white}    : $(cat R4W_RESULT/ICLOUD_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "NETEASE ${white}   : $(cat R4W_RESULT/NETEASE_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "LIBERO ${white}    : $(cat R4W_RESULT/LIBERO_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "HSBC ${white}      : $(cat R4W_RESULT/HSBC_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "GMX ${white}       : $(cat R4W_RESULT/GMX_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "AOL ${white}       : $(cat R4W_RESULT/AOL_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "VERIZON ${white}   : $(cat R4W_RESULT/VERIZON_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "COX ${white}       : $(cat R4W_RESULT/COX_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "EARTHLINK ${white} : $(cat R4W_RESULT/EARTHLINK_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "QQ ${white}        : $(cat R4W_RESULT/QQ_$outputList | wc -l)\n"
printf "${purple}───────────────────────────────────────────────────────\n"
printf "UNKNOWN ${white}   : $(cat R4W_RESULT/UNKNOWN_$outputList | wc -l)\n\n"
