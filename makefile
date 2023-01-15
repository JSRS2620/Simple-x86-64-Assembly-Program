all:
	yasm -felf64 try1.asm -o try1.o
	gcc -no-pie try1.o -o try1 -e main
