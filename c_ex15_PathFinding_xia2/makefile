
#当前文件夹找不到需要的文件时，VPATH会被使用
#make会在VPATH指定的文件夹中依次搜索
#当多个文件夹存在同名文件时，选择第一次搜索到的文件
#VPATH只能决定make的搜索路径，无法决定命令的搜索路径
#对于特定的编译命令(gcc),需要独立指定编译的搜索路径
#gcc -I(编译选项，指定gcc的头文件搜索路径) inlcude-path(路径参数，具体需要gcc搜索的路径)

#VPATH 变量用于指示make如何查找文件
#make 会在VPATH指定的文件夹中依次搜索文件
#vpath 关键字可以为不同类型的文件指定不同的搜索路径
#vpath比VPATH更灵活易用，可动态设置/取消搜索路径

#如果这两个同时出现，make会怎么做呢？
#make优先在vpath指定的文件夹中搜索目标文件
#当vpath搜索失败时，转而搜索VPATH指定的文件夹
#当有两个vpath指定文件夹时，make以自上而下搜索vpath指定的文件夹
#
#

#make对路径搜索的能力是很弱的
#当app.out完全不存在时，make在当前文件下创建app.out
#当src文件夹中存在app.out时，
#	所有的目标和依赖新旧关系不变，make不会重新创建app.out
#	当依赖文件更新，make在当前文件夹下创建app.out
#
#
#GPATH: 使用GPATH特殊变量指定目标文件夹
#
#
#工程项目中的几点建议：
#尽量使用vpath为关键字不同文件指定搜索路径
#不要在源码文件夹中生成目标文件
#为编译得到的结果创建独立的文件夹
#避免VPATH和GPATH特殊变量的使用
#
.PHONY: clean

GPATH:= src

OBJS := main.o func.o
CFLAGS := -I inc

VPATH := src

hello.out: $(OBJS)
	gcc -o $@ $^
	@echo "Target File ==> $@"


$(OBJS): %.o : %.c inc/func.h
	gcc $(CFLAGS) -o $@ -c $<

clean:
	rm -fr *.o *.out 

