CFLAGS=-I .
LDFLAGS=-L. -lgotest -pthread

all: test

test: libgotest.a ctest/test.o
	gcc -o test $^ $(LDFLAGS)

libgotest.a: gotest/test.go
	go build -buildmode=c-archive -o libgotest.a gotest/test.go

ctest/test.o: ctest/test.c

clean:
	rm ctest/*.o libgotest.* test
