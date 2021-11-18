#!/usr/bin/env bash

for i in {0..2}
do
    branch_name=`uuidgen`
    
    printf "\n"
    printf ">>>Creating PR for branch $branch_name\n<<<"
    git checkout -b $branch_name
    
    gh pr create
    
    git checkout main
    git branch -D $branch_name
    printf "\n"
done