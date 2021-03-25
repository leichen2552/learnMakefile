
CC := gcc
MKDIR := mkdir
RM := rm -fr

DIR_OBJS := objs
DIR_TARGET := target

DIRS := $(DIR_OBJS) $(DIR_TARGET)

TARGET := $(DIR_TARGET)/hello.out

SRCS := $(wildcard *.c)

OBJS := $(SRCS:.c=.o)

OBJS := $(addprefix $(DIR_OBJS)/,$(OBJS))

.PHONY: rebuild all clean

$(TARGET) :$(DIRS) $(OBJS)  
	$(CC) -o $@ $(OBJS)
	@echo "Target File ==> $@"

$(DIRS):
	$(MKDIR) $@

$(DIR_OBJS)/%.o : %.c fun.h
	$(CC) -o $@ -c $< 

rebuild : clean all

all : $(TARGET)

clean:
	$(RM) $(DIRS)


