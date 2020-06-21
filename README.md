# v5.0 
1. 引入wildcard函数，patsubst函数
2. wildcard用于获取符合特定规则的文件名
```makefile
$(wildcard ****.cpp)  # 过来所有的.cpp文件
```
3. patsubst用于文本处理
```makefile
$(patsubst %.cpp, %.o, $(SOURCES))  # 将SOURCE表示的所有.cpp文件替换为同名的.o文件
```


# v4.0
1. 引入特殊符号，精简makefile
2. all:library.cpp main.cpp
> $@指代all，即target
> $<指代library.cpp, 即第一个dependency
> $^指代library.cpp和main.cpp,即所有的dependency


# v3.0
1. 使用变量，变量名允许自定义(抽象功能)


# v2.0
1. 语法规则:<target>:<dependencies>
2. 有选择性的编译源文件:即增量编译


# v1.0
1. makefile文件名敏感，可以为makefile或者Makefile(仅两种写法)，不能为其他版本(MakeFile, Make_File, makeFile,...)	
2. makefile缩进敏感，在行首为<tab>，不能随便打空格
3. all, clean为target,名称可自定义,真正编译的是他们下面的命令
4. 执行为make target,默认第一个target

