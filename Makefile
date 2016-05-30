CFLAGS=-I .
LDFLAGS=-L. -lgotest -pthread

all: gotest.a test

gotest.a:
	go build -buildmode=c-archive -o libgotest.a gotest/test.go

test: ctest/test.o
	gcc -o test $^ $(LDFLAGS)

ctest/test.o: ctest/test.c

clean:
	rm ctest/*.o libgotest.* test
