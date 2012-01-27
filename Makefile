#include makefile.rules

PROJECTS = exo_1 exo_2 utilz shellcodz
EXEC = exo1 exo2

.PHONY:	all clean

all:
	@for d in $(PROJECTS); do (cd $$d; $(MAKE)); done

clean:
	@for d in $(PROJECTS); do (cd $$d; $(MAKE) clean); done

distclean: clean
	rm -f makefile.rules
	@for d in $(EXEC); do (rm $$d); done