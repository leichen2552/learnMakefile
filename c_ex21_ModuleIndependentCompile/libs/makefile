
.PHONY : all dlib.so slib.a clean rebuild

TYPE_SRC := .c
TYPE_INC := .h
TYPE_OBJ := .o
TYPE_DEP := .dep

DIR_SRC := src
DIR_INC := inc
DIR_LIB := lib
DIR_OBJ := obj

CC := gcc

vpath %$(TYPE_SRC) $(DIR_SRC)
vpath %$(TYPE_SRC) $(DIR_INC)
vpath %$(TYPE_LIB) $(DIR_LIB)

SRCS := $(wildcard $(DIR_SRC)/*$(TYPE_SRC))
SRCS := $(notdir $(SRCS))
OBJS := $(SRCS:$(TYPE_SRC)=$(TYPE_OBJ))
OBJS := $(addprefix $(DIR_OBJ)/, $(OBJS))

all :
	@echo "$(OBJS)"

dlib.so : %$(TYPE_OBJ)
	@echo "Creating $@ ..."
	$(CC) -shared -o $@ $^
	@echo "Success! $@ is Created !"

slib.a :
	@echo "$@ is created"

%$(TYPE_OBJ) : %$(TYPE_SRC)
	$(CC) -o $@ -c -fPIC  $^ 


