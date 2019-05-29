# Git and Hello World Introduction

Create directory structure

	mkdir embedded-linux
	cd embedded-linux/
	mkdir utils
	cd utils/

Use vim to write a simple hello world program on C

	vim helloworld.c


Compile it using GCC

	gcc helloworld.c -o helloworld
	./helloworld


Inspect the executable file with tools like nm, readelf, file, strings, etc

	nm helloworld
	readelf helloworld
	readelf -S helloworld
	file helloworld


Create a README.md file

	cd ../
	vim README.md


Initialize a git repo and do your first commit

	git init
	git add README.md
	git commit -s

Inspect your commit and uncommited files

	git log
	git show
	git status

Add and commit your helloworld.c file

	git add utils/helloworld.c
	git commit -s
	git log


Create a github repo and push your changes

	git remote add origin https://github.com/juan-gutierrez/embedded-linux.git
	git push origin master


Modify the helloworld.c to use a _start and rename it as helloworldNoStart.c

	vim utils/helloworld.c
	gcc helloworld.c -o helloworld -nostartfiles
	
	cp  utils/helloworld.c utils/helloworldNoStart.c
	git status
	git diff
	git checkout utils/helloworld.c

	git add utils/helloworldNoStart.c
	git commit -s


Inspect the new executable helloworldNoStart

	gcc helloworldNostart.c -o helloworldNoStart -nostartfiles

	readelf -s helloworldNoStart
	readelf -h helloworldNoStart
	nm helloworldNoStart


Update the readme file and use ammend to update commit

	vim ../README.md
	git status
	git add ../README.md
	git commit -s
	vim ../README.md
	git commit --amend
	git status

Inspect your commits

	git show 67dd41290d4da7d11bc018b504302527f20ff043
	git log --oneline
	git show HEAD~5
	git show HEAD~4
	git show HEAD~3
	git show HEAD~2
	git show HEAD~1
	git show HEAD


	


	


	

	


