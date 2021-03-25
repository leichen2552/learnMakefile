.PHONY: all clean rebuild
		
MKDIR := mkdir
RM := rm -fr
CC := gcc

DIR_DEPS := deps
DIR_EXES := exes
DIR_OBJS := objs

DIRS := $(DIR_DEPS) $(DIR_EXES) $(DIR_OBJS)

EXE := app.out
EXE := $(addprefix $(DIR_EXES)/, $(EXE))

SRCS := $(wildcard *.c)

OBJS := $(SRCS:.c=.o)
OBJS := $(addprefix $(DIR_OBJS)/, $(OBJS))

DEPS := $(SRCS:.c=.dep)
DEPS := $(addprefix $(DIR_DEPS)/, $(DEPS))

all: $(DIR_OBJS) $(DIR_EXES) $(EXE)

$(EXE) : $(OBJS)
	$(CC) -o $@ $^
	@echo "Success! Target => $@"

$(DIR_OBJS)/%.o : %.c
	$(CC) -o $@ -c $(filter %.c, $^)


#include 前面的减号不仅关闭了make时的warings，同时也关闭了make时的errors
ifeq ("$(MAKECMDGOALS)", "all")
-include $(DEPS)
endif

ifeq ("$(MAKECMDGOALS)","")
-include $(DEPS)
endif

$(DIRS):
	$(MKDIR) $@

ifeq ("$(wildcard $(DIR_DEPS))","")
$(DIR_DEPS)/%.dep :$(DIR_DEPS) %.c
else
$(DIR_DEPS)/%.dep :%.c
endif
	@echo "Creating $@ ..."
	@set -e; \
	$(CC) -MM -E $(filter %.c, $^) | sed 's,\(.*\)\.o[ :]*,objs/\1.o $@ : ,g' > $@

clean:
	$(RM) $(DIRS)

rebuild:
	@$(MAKE) clean
	@$(MAKE) all
