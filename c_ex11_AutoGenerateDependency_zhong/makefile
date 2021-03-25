.PHONY: all clean
		
MKDIR:= mkdir
RM:= rm -fr
CC:= gcc

SRCS:= $(wildcard *.c)
DEPS:= $(SRCS:.c=.dep)

-include $(DEPS)

all:
	@echo "all"

%.dep : %.c
	@echo "Creating $@ ..."
	@set -e; \
	$(CC) -MM -E $^ | sed 's, \(.*\)\.o[ :]*,objs/\l.o : ,g' > $@

clean:
	$(RM) $(DEPS)



