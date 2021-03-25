

AR := ar
ARFLAGS := crs

CC := gcc
LFLAGS := 
CFLAGS := -I$(DIR_INC) -I$(DIR_COMMON_INC)


MKDIR := mkdir
RM := rm -fr

ifeq ($(DEBUG),true)
CFLAGS += -g
endif



