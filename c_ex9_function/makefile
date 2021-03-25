.PHONY : test

#var3 = 3


define func1
	@echo "My name is $(0)"
endef	

define func2
	@echo "My name is $(0)"
	@echo "Param 1  => $(1)"
	@echo "Param 2  => $(2)"
endef	

#define func2
#	@echo "My name is $(0)"
#endef

var := $(call func1)

var1 := $(func1)
var2 := $(func2)

test :
	@ echo "var2 = $(var2)"
	@ echo "var1 = $(var1)"
	@ echo "var  = $(var)"
	$(call func1, 111)
#	$(call func2, NenuPhysics)
