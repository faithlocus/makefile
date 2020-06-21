# makefile
CC=g++              # 编译器
CFLAGS= -c -Wall	# 编译选项
LFLAGS= -Wall		# 连接选项

SOURCE_DIR= .
SOURCE_FILE=$(wildcard $(SOURCE_DIR)/*.cpp)
OBJS = $(patsubst %.cpp, %.o, $(SOURCE_FILE))

all:hello
hello:$(OBJS)
	$(CC) $(LFLAGS) $^ -o $@ 

main.o:main.cpp
	$(CC) $(CFLAGS) $<

function1.o:function1.cpp
	$(CC) $(CFLAGS) $<

function2.o:function2.cpp
	$(CC) $(CFLAGS) $<

clean:
	rm -rf *.o hello

