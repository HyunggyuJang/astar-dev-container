#!/bin/bash


folder_path=$1

if [ ! -d "$folder_path" ]; then
  mkdir "$folder_path"
  echo "Folder $folder_path created."
else
  echo "Folder $folder_path already exists."
fi

echo "user:$(git config user.name)" > ~/astar/git_creds
echo "email:$(git config user.email)" >> ~/astar/git_creds
