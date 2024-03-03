CFLAGS=-I./include
CC=gcc
AR=ar
AR_FLAGS=rcs

all: libspear.a

libspear.a: window.o
	$(AR) $(AR_FLAGS) $@ $^

%.o: src/%.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $^ -o $@

clean:
	rm -rf libspear.a *.o
