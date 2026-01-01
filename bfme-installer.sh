#!/bin/bash


pause() {
	read -p "Zum Fortfahren, bitte ENTER drücken..."
}

clear
echo "========================================"
echo "| the Battle of Middle Earth installer |"
echo "========================================"
echo "Hey, $USER"

echo "gehe zu 
https://forums.revora.net/topic/105190-bfme1bfme2rotwk-games-download-installation-guide/
und lade die ISO (main) runter"

pause

clear
cd ~/Downloads
ls -CF
read -p "Volständige Name der ISO: " isoName
sudo mount --mkdir -o loop $isoDatei /mnt/iso

sudo pacman -S lutris wine wine-mono wine_gecko

clear
echo "Bitte nun folgende Schritte befolgen:
1) lutris öffnen
2) '+' anklicken
3) 'install from an executable' auswählen
4) autorun.exe aus der ISO (unter /mnt/iso) auswählen
5) 'installieren' auswählen
6) Für installierungs-Code bitte zu
https://www.reddit.com/r/bfme/comments/1cbnfr2/install_codes/
gehen und einen auswählen"

pause

pacman -S unzip
clear
echo "Nun bitte folgende Datei herunterladen:
https://www.gamespressure.com/download/the-lord-of-the-rings-the-battle-for-middle-earth-patch-106-all/z4136fd"

ls -CF
read -p "name der Datei: " dateiName
unzip $dateiName

clear
echo "Nun folgendes:
1) Lutris öffnen
2) bfme rechtsklicken
3) 'configure' auswählen
4) ausführbare Datei auf die eben entpackte version der heruntergeladenen Datei setzen
5) installieren"

pause

clear
echo "Nun Danach:
1) bfme rechtsklicken
2) 'configure' auswählen
3) ausführbare datei auf das folgende setzen:
~/games/bfme/drive_c/user/deinUser/appdata/roaming/my-battle-for-middle-earth
4) nochmal auf
https://forums.revora.net/topic/105190-bfme1bfme2rotwk-games-download-installation-guide/
und bei dem Schritt 5 das blaue 'HIER' anklicken und die options.ini herunterladen
5) diese options.ini in den Ordner von Schritt 4"

pause

clear
echo "Das sollte es gewesen sein..."
