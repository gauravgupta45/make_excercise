include sources.mk

# Compiler Definations
CC = gcc
BASENAME = main
TARGET = $(BASENAME).out

OBJS = $(SRCS:.c=.o)
%.o : %.c
	$(CC) -Wall -o $@ -c $<


.PHONY : all
all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -Wall -o $@ $(OBJS)

.PHONY : clean
clean:
	rm -f $(OBJS) $(TARGET)


