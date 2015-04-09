#CC = gcc or g++
CC = gcc
#CFLAGS are compile flags such as -lm to include <math.h>
#or -std=c++0x for C++11
CFLAGS = -Wall -std=c99
#TARGET is the name of your main file
TARGET = myMain
#OBJECTS = $(TARGET).o library1.o library.o, all the header files here
OBJECTS = $(TARGET).o myLib.o
#EXTRA Command line arguments
#Syntax: make EXTRA="arg1 arg2"
EXTRA? = ""

#Do not modify
$(TARGET) : $(OBJECTS)
		$(CC) $(CFLAGS) $(EXTRA) $(OBJECTS) -o $(TARGET).bin

#%.c or %.cpp
%.o : %.c
		$(CC) $(CFLAGS) $(EXTRA) -c $<

clean:
	rm -rvf $(OBJECTS) $(TARGET).bin *~
