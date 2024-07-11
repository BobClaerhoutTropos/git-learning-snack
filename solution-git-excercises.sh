$ git clone https://gitexercises.fracz.com/git/exercises.git
cd exercises
git config user.name "bcl"
git config user.email "trp-bcl.com"
./configure.sh
git start

$ git start
$ git verify

## 1: commit-one-file
$ git start next
$ git add A.txt
$ git commit -m "message"

## 2: commit-one-file-staged
$ git reset B.txt
$ git commit -m "one file"
$ git verify

## 3: ignore-them
$ code .gitignore
$ git add .gitignore
$ git commit -m "gitignore"

## 4: chase-branch
$ git checkout escaped
$ git branch -d chase-branch
$ git checkout -b chase-branch

## 5: merge-conflict
$ git merge another-piece-of-work
$ git status
$ git mergetool
$ git merge --continue

## 6: save-your-work
$ git status
$ git stash
$ code bug.txt
$ git add .
$ git commit -m "bugfix"
$ git stash pop
$ git add .
$ git commit -m "after bugfix"

## 7: change-branch-history
$ git rebase hot-bugfix

## 8: remove-ignored
$ git rm ignored.txt
$ git commit -m "deleted"

## 9: case-sensitive-filename
$ git reset --soft HEAD^
$ git reset .
$ mv File.txt file.txt
$ git add .
$ git commit -m "renamed"

## 10: fix-typo
$ git start fix-typo
$ git reset --soft HEAD^
$ code file.txt
$ git add .
$ git commit -m "Add Hello world"

## 11: forge-date
$ git commit --amend --date="Mar 01 10:00 1987 +0600" --no-edit

## 12: fix-old-typo
$ git rebase -i HEAD~2
# use 'e' to edit a commit
$ code file.txt
$ git add .
$ git commit --amend
$ git rebase --continue

$ git mergetool
$ git status

$ git status
$ rm file.txt.orig

$ git commit
$ git rebase --continue

## 13: commit-lost
$ git reflog
$ git checkout 326f9d6
$ git branch -D commit-lost
$ git checkout -b commit-lost

## 14: split-commit
$ git reset --soft HEAD^
$ git reset second.txt
$ git commit -m "first"
$ git add .
$ git commit -m "second"

## 15: too-many-commits
$ git log -2
$ git reset --soft HEAD^
$ git add .
$ git commit --amend

## 16: executable
$ chmod +X script.sh
$ git add .
$ git commit --amend

## 17: commit-parts

git log -Sshit
git rebase -i <found commit>^
# remove the swearword
git rebase --continue

## 18: pick-your-features
$ git cherry-pick fadc460130d4b4056031f60a62beb4a6935c8f8a
$ git cherry-pick a35758636d6c5b4c2dad36bac38fe0c0164d4d0b
$ git cherry-pick 334f6dd51d19ca94bcb1074114d9a30b4f23e813 14:28:36
$ git rebase -i HEAD~2

## 19: rebase-complex
$ git start rebase-complex
$ git rebase --onto your-master 21f15e8c3ecf346f7871c23baa85903cc614a9ea

## 20: invalid-order
$ git rebase -i HEAD~3
# switch order in rebase

## 21: find-swearwords
$ git log -S "shit" -p
$ git rebase -i a16dd43d3028a84db0b3a9ac0b199809ba0c8322
$ code words.txt
$ code list.txt
$ git add .
$ git commit --amend

## 22: find-swearwords
$ openssl enc -base64 -A -d < home-screen-text.txt | grep jackass
$ git bisect start
$ git bisect bad
$ git bisect good 1.0

$ openssl enc -base64 -A -d < home-screen-text.txt | grep jackass
$ git bisect bad # depending on whether 'jackass' is found
$ git bisect good # depending on whether 'jackass' is found

$ git push origin 8df570cfed91dda95c7d0809af871dd2438b418e:find-bug
