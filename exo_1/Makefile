FILES = main.c
EXEC = exo1
CC = gcc
LFLAGS = -z execstack -fno-stack-protector

OBJS = $(FILES:.c=.o)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LFLAGS) $^ -o ../$@

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f *~ *.o