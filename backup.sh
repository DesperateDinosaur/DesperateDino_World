#!/usr/bin/env sh
repo_dir='/home/desperatedinosaur/DesperateDino_World/'
world_dir='/home/desperatedinosaur/minecraftServer/world/'

cd $repo_dir

git pull origin main -q

rm -r ./world_backup
cp -r $world_dir ./world_backup
# zip -r ./world_backup.zip $world_dir

git add . && \
git commit -q -m "$(date +"%c")" && \
git push
