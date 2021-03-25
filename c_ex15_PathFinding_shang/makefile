
#当前文件夹找不到需要的文件时，VPATH会被使用
#make会在VPATH指定的文件夹中依次搜索
#当多个文件夹存在同名文件时，选择第一次搜索到的文件
#

#VPATH(是变量) 变量用于指示make如何查找文件
#make 会在VPATH指定的文件夹中依次搜索文件
#vpath(是关键字) 关键字可以为不同类型的文件指定不同的搜索路径
#vpath比VPATH更灵活易用，可动态设置/取消搜索路径

.PHONY: clean

OBJS := main.o func.o
INC := inc
SRC := src
CFLAGS := -I $(INC)

vpath %.h $(INC)
vpath %.c $(SRC)

hello.out: $(OBJS)
	gcc -o $@ $^
	@echo "Target File ==> $@"


$(OBJS): %.o : %.c func.h
	gcc $(CFLAGS) -o $@ -c $<

clean:
	rm -fr *.o *.out 

