# Useful tools on Linux

Use find and grep to find content on files

	find ./ -name *.c

	grep -r "Hello" ./
	grep -r "Hello world" ./
	grep -rn "Hello world" ./
	grep -rn -B 1 -A 1 "Hello world" ./

	cat helloworld.c


Use Vim to replace text

	vim utils/helloworld.c
	:s/Hello world/hola mundo/
	:%s/Hello world/hola mundo/
	:5s/Hello world/hola mundo/


Use Sed to replace text

	sed 's/Hello world/hola mundo/' utils/helloworld.c
	sed 's/Hello world/hola mundo/' utils/helloworld.c > utils/holamundo.c
	sed 's/Hello world/hola mundo/' -i utils/helloworld.c

	sed 's#Hello#hola#' ../utils/helloworld.c
  
	find ./ -name *.c -exec echo "fileName: "{} \;
	find ./ -name *.c -exec echo "sed "{} \;
	find ./ -name *.c -exec echo "sed -e "s#Hello#Hola#" -i "{} \;
	find ./ -name *.c -exec echo "sed -e "s#Hello#Hola#" -i "{} \; > myReplace.sh

	./myReplace.sh
	

References:
 [sed-command-in-linux-unix-with-examples](htps://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/)
 https://www.maketecheasier.com/beginners-guide-to-sed-linux/


