# contrib/log_functions/Makefile

MODULE_big = log_functions
OBJS = log_functions.o

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/log_functions
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
override CFLAGS += -DINCLUDE_PACKAGE_SUPPORT=0  -I$(top_builddir)/src/pl/plpgsql/src

