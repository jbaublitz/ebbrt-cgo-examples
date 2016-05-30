CFLAGS=-I .
LDFLAGS=-L. -lgotest -pthread

CFILES=ctest/test.c
OBJFILES=$(CFILES:.c=.o)
ARCFILES=libgotest.a
GOFILES=gotest/test.go

all: test

test: $(ARCFILES) $(OBJFILES)
	gcc -o $@ $^ $(LDFLAGS)

$(ARCFILES): $(GOFILES)
	go build -buildmode=c-archive -o $@ $^

$(OBJFILES): $(CFILES)

clean:
	rm ctest/*.o libgotest.* test
