#/bin/bash

apt-get update && apt-get install -y git openssh-client

git config --global user.email "lucia.sophie.layritz@posteo.de"
git config --global user.name "lucialayr"


chmod +x .devcontainer/scripts/start_jupyternb.sh