#!/bin/bash
###############################
###
###   FIRST ARGUMENT IS THE COMMIT MESSAGE
###   IF THERE IS NO COMMIT MESSAGE A STANDARD MESSAGE WILL BE USED
###   THIS SCRIPT RUNS getGitLines.sh first to update the total lines count
###
###############################
standardCommitMessage="Commited with script."
./getGitLines.sh
git add .
if [[ $# -le 0 ]]; then
  git commit -m "$standardCommitMessage"
else
  git commit -m "$1"
fi

git push
