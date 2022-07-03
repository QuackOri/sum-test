#Makefile
all: sum-testf

sum-testf: sum.o main.o
	g++ -o sum-testf sum.o main.o

main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

clean:
	rm -f sum-testf
	rm -f *.o
