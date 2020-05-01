datenow=$(date +"%d-%m-%y_%H:%M")

mkdir -vp /vo01/dockfileBackup-Archival/$datenow

cp -fvr /data/jenkins/dockfiles /vo01/dockfileBackup-Archival/$datenow



