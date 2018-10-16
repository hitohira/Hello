TARGET := hello
SRCS := main.c hello.c
OBJS := $(SRCS:%.c=%.o)
DEPS := $(SRCS:.c=.dep)


all: $(TARGET)

$(TARGET): $(OBJS)
	gcc -Wall -o $@ $^

%o:%.c
	gcc -c -MMD $< 

clean:
	rm -f $(TARGET) $(OBJS)

