include sources.mk

# Compiler Definations
CC = gcc
CFLAGS = -Wall -g

BASENAME = main
TARGET = $(BASENAME).out

OBJS = $(SRCS:.c=.o)
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<


.PHONY : all
all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

.PHONY : clean
clean:
	rm -f $(OBJS) $(TARGET)


