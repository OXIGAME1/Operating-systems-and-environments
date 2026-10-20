main.o: main.s
	as -o main.o main.s

main: main.o
	ld -o main main.o

clean:
	rm -f *.o

build: main clean

.PHONY: clean build
