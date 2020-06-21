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

$(OBJS):%.o:%.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o hello

