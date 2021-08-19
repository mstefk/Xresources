#! /usr/bin/bash
#TO ADD : vspm add <name of file you want the password to be stored> <password>
#TO GET PASSWORD : vpsm add <name of password>
#gpg --decrypt SECURE.gpg 2>/dev/null | xclip -selection c
#gpg --decrypt ~/.pass_store/gmail 2>/dev/null | sed -z '$ s/\n$//' | xclip -selection c
if [[ $1 == "add" && -n $2 && -n $3 ]];then
echo $3 | gpg --output ~/.pass_store/$2 --symmetric
elif [[ $1 == "get" && -n $2 ]];then
gpg --decrypt ~/.pass_store/$2 2>/dev/null | sed -z '$ s/\n$//' | xclip -selection c
else
echo ERROR
fi
