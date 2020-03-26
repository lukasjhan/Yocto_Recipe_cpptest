CC=g++
RM=rm
CFLAGS=-c -Wall
LDFLAGS=
DESTDIR=
BINDIR=/usr/bin
SOURCES=func.cpp cpptest.cpp
OBJECTS=$(SOURCES:.c=.0)
EXECUTABLE=cpptest
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $@
clean:
	$(RM) $(EXECUTABLE) 
install: $(EXECUTABLE)
	mkdir -p $(DESTDIR)/$(BINDIR)
	install -m 0755 $< $(DESTDIR)/$(BINDIR)

