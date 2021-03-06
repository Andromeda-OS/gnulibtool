Project = libtool

# Apple's libtool is not the same as GNU libtool, so we prefix a `g` to the
# filename to avoid a conflict. Use `glibtool` and `glibtoolize`, not `libtool`.
Extra_Configure_Flags = --program-prefix=g --enable-ltdl-install CC=clang
Extra_Make_Flags = CC=clang
Install_Prefix = /usr/local
Install_Man = /usr/local/share/man
Install_Info = /usr/local/share/info

ifeq ($(MAKEFILEPATH),)
$(error MAKEFILEPATH must be defined, it should have come from Xcode)
endif
include $(MAKEFILEPATH)/CoreOS/ReleaseControl/GNUSource.make
