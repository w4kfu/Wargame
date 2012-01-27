FILES = binbash.s
EXEC = bin_bash
AS = as
LD = ld

OBJS = $(FILES:.s=.o)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(LD) $(LFLAGS) $^ -o ../$@

.s.o:
	${AS} -a $< -o $*.o >$*.map

clean:
	rm -f *~ *.o *.map