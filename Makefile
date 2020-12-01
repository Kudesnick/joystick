CC=gcc
CFLAGS=-c
LDFLAGS=
SOURCES=joystick.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=jsx

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
