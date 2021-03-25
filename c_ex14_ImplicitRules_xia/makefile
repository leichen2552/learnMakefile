
#隐式规则的副作用
#1编译行为难以控制：大量地使用隐式规则可能会产生意想不到的编译行为
#2编译效率低下：make从隐式规则和自定义规则中选择最终使用的规则
#3当依赖的目标不存在时，make会极力组合各种隐式规则对目标进行创建，进而产生意料之外的编译行为

#查看所有隐式规则：make -p ，make大概提供了1000条隐式规则
#查看具体规则：make -p|grep "XXX"

#局部禁用：在makefile中自定义规则
#		   在makefile中定义模式（如：%.o:%.p）
#全局禁用：
#		   make -r

#后缀规则不允许有依赖
#后缀规则必须有命令，否则无意义
#后缀规则将逐步被模式规则取代

#SRCS := $(wildcard *.c)
#OBJS:= $(SRCS:.c = .o)

#app.out: $(OBJS)
#	$(CC) -o $@ $^
#	$(RM) $^
#	@echo "Target ==> $@"

app.out:main.o func.o
	$(CC) -lstdc++ -o $@ $^


.c.o:
	@echo "my suffix rule"
	$(CC) -o $@ -c $^

.c:
	@echo "my suffix rule"
	$(CC) -o $@ -c $^
