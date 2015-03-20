#CC = gcc or g++
CC = gcc
#CFLAGS are compile flags such as -lm to include <math.h>
#or -std=c++0x for C++11
CFLAGS = -Wall -std=c99
#TARGET is the name of your main file
TARGET = myMain
#OBJECTS = $(TARGET).o library1.o library.o, all the header files here
OBJECTS = $(TARGET).o myLib.o

#Do not modify
$(TARGET) : $(OBJECTS)
		$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET).bin

#%.c or %.cpp
%.o : %.c
		$(CC) $(CFLAGS) -c $<

clean:
	rm -rvf $(OBJECTS) $(TARGET).bin *~
