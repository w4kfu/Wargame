PROJECTS = filereader
EXEC = file_reader

.PHONY: all clean

all:
	@for d in $(PROJECTS); do (cd $$d; $(MAKE)); done

clean:
	@for d in $(PROJECTS); do (cd $$d; $(MAKE) clean); done

distclean: clean
	rm -f makefile.rules
	@for d in $(EXEC); do (rm $$d); done