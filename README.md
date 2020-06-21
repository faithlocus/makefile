# v2.0
1. 语法规则:<target>:<dependencies>
2. 有选择性的编译源文件:即增量编译


# v1.0
1. makefile文件名敏感，可以为makefile或者Makefile(仅两种写法)，不能为其他版本(MakeFile, Make_File, makeFile,...)	
2. makefile缩进敏感，在行首为<tab>，不能随便打空格
3. all, clean为target,名称可自定义,真正编译的是他们下面的命令
4. 执行为make target,默认第一个target

