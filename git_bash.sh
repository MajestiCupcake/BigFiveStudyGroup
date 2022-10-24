#!/bin/bash
#S.K.K., 24 October 2022. 


#Enter remote repo path.
#echo "type remote repository name: "; read -a remote_git_repo
remote_git_repo="https://github.com/MajestiCupcake/BigFiveStudyGroup.git"


#Split strings.
str=$remote_git_repo
substr="://"
len_string=$(expr length $remote_git_repo)

#Get indices to relevant string parts.
prefix=${str%%$substr*}
index=${#prefix}
  
#Now make clone path from remote repo
remote_path="https://"${remote_git_repo:$((index + 3)):$len_string}

# stage files
git add .

echo "enter your commit message: "; read git_commit_message

git commit -m $git_commit_message

#pushing

git push $remote_path