CC=gcc
RM=rm
CFLAGS=-c -Wall
LDFLAGS=
DESTDIR=
BINDIR=/usr/bin
SOURCES=func.c ctest.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=ctest
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $@
clean:
	$(RM) $(EXECUTABLE) *.o 
install: $(EXECUTABLE)
	mkdir -p $(DESTDIR)/$(BINDIR)
	install -m 0755 $< $(DESTDIR)/$(BINDIR)

