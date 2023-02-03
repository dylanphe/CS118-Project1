CC=gcc
CFLAGS=-I.
DEPS=
OBJ=server.o
USERID=505834475_505536013

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: server
server: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -rf *.o server *.tar.gz
dist: tarball
tarball: clean
	tar -cvzf /tmp/$(USERID).tar.gz server.c Makefile README.md && mv /tmp/$(USERID).tar.gz .