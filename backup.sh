#!/usr/bin/env sh
repo_dir=$(pwd)
world_dir='../minecraftServer/world/'

cd $repo_dir
git pull origin main -q
result=$(git status --porcelain | wc -1)

if [[ $result -eq 0 ]] ; then
	exit 0


fi

zip -r ./world_backup.zip $world_dir
git add .; git commit -q -m "$(date +"%c")"; git push origin main -q
