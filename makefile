# makefile
CC=g++              # 编译器
CFLAGS= -c -Wall	# 编译选项
LFLAGS= -Wall		# 连接选项


all:hello
hello:main.o function1.o function2.o
	$(CC) $(LFLAGS) -o hello main.o function1.o function2.o

main.o:main.cpp
	$(CC) $(CFLAGS) main.cpp

function1.o:function1.cpp
	$(CC) $(CFLAGS) function1.cpp

function2.o:function2.cpp
	$(CC) $(CFLAGS) function2.cpp

clean:
	rm -rf *.o hello

