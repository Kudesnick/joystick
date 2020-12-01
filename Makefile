CC=gcc
CFLAGS=-c
LDFLAGS=
SOURCES=joystick.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=jsc

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
