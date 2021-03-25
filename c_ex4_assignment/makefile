#ex1
# x := foo
# y := $(x)b
# x := new

#ex2 尽量不要使用递归赋值
# x = foo
# y = $(x)b
# x = new
# a = $(b)
# b = $(c)
# c = hello.makefile

#ex3
#x := foo
#y := $(x)b
#x ?= new

#ex4 会在原字符串和新字符串之间加个空格
x := foo
y := $(x)b
x += new

.PHONY : test

test : 
	@echo "x => $(x)"
	@echo "y => $(y)"

#	@echo "a => $(a)"
#	@echo "b => $(b)"
#	@echo "c => $(c)"

