
.PHONY : all compile link clean rebuild $(MODULES)

DEBUG := true

DIR_PROJECT := $(realpath .)
DIR_BUILD_SUB := $(addprefix $(DIR_BUILD)/, $(MODULES))
MODULE_LIB := $(addsuffix .a, $(MODULES))
MODULE_LIB := $(addprefix  $(DIR_BUILD)/, $(MODULE_LIB))

APP := $(addprefix $(DIR_BUILD)/, $(APP))

define makemodule
	cd ${1} && \
		$(MAKE) all \
			DEBUG:=$(DEBUG) \
			DIR_BUILD:=$(addprefix $(DIR_PROJECT)/, $(DIR_BUILD)) \
			DIR_COMMON_INC:=$(addprefix $(DIR_PROJECT)/, $(DIR_COMMON_INC)) \
			MOD_CFG:=$(addprefix $(DIR_PROJECT)/, $(MOD_CFG)) \
			MOD_RULE:=$(addprefix $(DIR_PROJECT)/, $(MOD_RULE)) \
			CMD_CFG:=$(addprefix $(DIR_PROJECT)/,$(CMD_CFG)) && \
	cd .. ;
endef


all : compile $(APP)
	@echo "Success! Target ==> $(APP)"

#此处传文件夹路径的赋值符号前后处不能有空格
#命令行的方式通过拼接路径来传递路径
compile : $(DIR_BUILD) $(DIR_BUILD_SUB)
	@echo "Begin to compile ..."
	@set -e;\
	for dir in $(MODULES);\
	do \
		$(call makemodule, $$dir) \
	done
	@echo "Compile Success!"

link $(APP): $(MODULE_LIB)
	@echo "Begin to link ..."
	$(CC) -o $(APP) -Xlinker  "-(" $^ -Xlinker "-)" $(LFLAGS) 
	@echo "Link Success!"

$(DIR_BUILD) $(DIR_BUILD_SUB) :
	$(MKDIR) $@

clean :
	@echo "Begin to clean ..."
	$(RM) $(DIR_BUILD)
	@echo "Clean Success !"

rebuild : clean all
	@echo "Rebuild Success !"

$(MODULES) : $(DIR_BUILD) $(DIR_BUILD)/$(MAKECMDGOALS)
	@echo "Begin to compile $@"
	@set -e;\
	$(call makemodule,$@)
	@echo "Compiled $@ Success!"


