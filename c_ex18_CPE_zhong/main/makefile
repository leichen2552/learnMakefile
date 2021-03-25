
.PHONY : all

DIR_BUILD := /home/einsfat/cl_document/learn_Makefile/c_ex18_CPE_zhong/build
DIR_COMMON_INC := /home/einsfat/cl_document/learn_Makefile/c_ex18_CPE_zhong/common/inc

DIR_INC := inc
DIR_SRC := src

TYPE_INC := .h
TYPE_SRC := .c
TYPE_OBJ := .o
TYPE_DEP := .dep

AR := ar
ARFLAGS := crs

CC := gcc
CFLAGS := -I$(DIR_INC) -I$(DIR_COMMON_INC)

RM := rm -fr 

ifeq ($(DEBUG),true)
CFLAGS += -g
endif

MODULE := $(realpath .)
MODULE := $(notdir $(MODULE))
DIR_OUTPUT := $(addprefix $(DIR_BUILD)/, $(MODULE))

OUTPUT := $(MODULE).a
OUTPUT := $(addprefix $(DIR_BUILD)/, $(OUTPUT))

#模式替换中冒号后面不能有空格
SRCS := $(wildcard $(DIR_SRC)/*$(TYPE_SRC))
OBJS := $(SRCS:$(TYPE_SRC)=$(TYPE_OBJ))
OBJS := $(patsubst $(DIR_SRC)/%, $(DIR_OUTPUT)/%, $(OBJS))

DEPS := $(SRCS:$(TYPE_SRC)=$(TYPE_DEP))
DEPS := $(patsubst $(DIR_SRC)/%, $(DIR_OUTPUT)/%, $(DEPS))

vpath %$(TYPE_INC) $(DIR_INC)
vpath %$(TYPE_INC) $(DIR_COMMON_INC)
vpath %$(TYPE_SRC) $(DIR_SRC)

-include $(DEPS)

all : $(OUTPUT)
	@echo "Success! Target ==> $(OUTPUT)"

$(OUTPUT) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(DIR_OUTPUT)/%$(TYPE_OBJ) : %$(TYPE_SRC)
	$(CC) $(CFLAGS) -o $@ -c $(filter %$(TYPE_SRC), $^)

$(DIR_OUTPUT)/%$(TYPE_DEP) : %$(TYPE_SRC)
	@echo "Creating $@..."
	@set -e; \
	$(CC) $(CFLAGS) -MM -E $(filter %$(TYPE_SRC), $^) |	sed 's,\(.*\)\.o[ :]*,$(DIR_OUTPUT)/\1$(TYPE_OBJ) $@ : ,g' > $@


