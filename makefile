# makefile
all:
	g++ -o hello main.cpp function1.cpp function2.cpp

clean:
	rm -rf *.o hello

