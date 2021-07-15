#!/bin/bash

userName=$1
repo=$2
repoUrl=https://api.github.com/repos/$1/$2/releases/latest
zipUrl=$(curl -s $repoUrl | grep zipball_url | cut -d '"' -f 4)

echo "Repo Url: " $repoUrl
echo "Zip Url: " $zipUrl

curl -s -L "$zipUrl" > $userName_$repo.zip 

echo "done"
