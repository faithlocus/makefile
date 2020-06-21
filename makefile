# makefile
all:hello
hello:main.o function1.o function2.o
	g++ -o hello main.o function1.o function2.o

main.o:main.cpp
	g++ -c main.cpp

function1.o:function1.cpp
	g++ -c function1.cpp

function2.o:function2.cpp
	g++ -c function2.cpp

clean:
	rm -rf *.o hello

