#!/usr/bin/env sh
repo_dir='/home/desperatedinosaur/DesperateDino_World/'
world_dir='/home/desperatedinosaur/minecraftServer/world/'
backup_world_dir='/home/desperatedinosaur/DesperateDino_World/world_backup'

cd $repo_dir

git pull origin main -q

rm -r $backup_world_dir
cp -r $world_dir $backup_world_dir
# zip -r ./world_backup.zip $world_dir

git add . && \
git commit -q -m "$(date +"%c")" && \
git push
