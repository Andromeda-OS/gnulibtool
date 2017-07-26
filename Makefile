Project  = $(RC_ProjectName)
Project ?= libtool

Sources  = libtool
# Apple's libtool is not the same as GNU libtool, so we prefix a `g` to the
# filename to avoid a conflict. Use `glibtool` and `glibtoolize`, not `libtool`.
Extra_Configure_Flags = --prefix=/usr/local --program-prefix=g --enable-ltdl-install CC=clang
Extra_Make_Flags = CC=clang

ifeq ($(MAKEFILEPATH),)
$(error MAKEFILEPATH must be defined, it should have come from Xcode)
endif
include $(MAKEFILEPATH)/CoreOS/ReleaseControl/GNUSource.make
