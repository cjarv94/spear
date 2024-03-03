CFLAGS=-I./include
CC=gcc
AR=ar
AR_FLAGS=rcs

all: libspear.a

archive: libspear.tar.gz

libspear.tar.gz: libspear.a
	mkdir spear
	cp libspear.a spear
	mkdir spear/include
	cp -r include/spear spear/include
	tar -jcvf libspear.tar.xz spear
	rm -rf spear

libspear.a: window.o
	$(AR) $(AR_FLAGS) $@ $^

%.o: src/%.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $^ -o $@

clean:
	rm -rf *.o libspear.a libspear.tar.gz
