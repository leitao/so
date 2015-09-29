CFLAGS = -Wall -Werror -g3
all:
	gcc $(CFLAGS) -c -fpic shared.c
	gcc $(CFLAGS) -shared -o libshared.so shared.o
	gcc $(CFLAGS)  main.c -o main -lshared -L`pwd`

test: 
	LD_LIBRARY_PATH=`pwd`:$LD_LIBRARY_PATH ./main


