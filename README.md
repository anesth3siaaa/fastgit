![fastgit logo](fastgitlogo.svg)

A simple program to automate Git actions.
-
fastgit is a simple program written in BASH to help users quickly commit, pull and push by typing a single command. It assumes the user is already in the project's directory.
Usage: 

> `fastgit "Commit message"`

It executes these 4 commands if used right:
```bash
git add .
git commit -m "$1"
git pull --rebase origin
git push origin
```

Else, returns a rather cocky error:
```bash
if [ "$#" -ne 1 ]; then
	echo "\e[31mYou're missing a commit message."
	echo "Usage: fastgit \"Commit message\""
	exit 1
fi
```
