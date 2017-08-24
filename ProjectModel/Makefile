#--------------------------------
#COMPILERS-----------------------
#CC = gcc     # GNU C compiler
#CC = clang   # LLVM C compiler
CC = g++      # GNU C++ compiler
#CC = clang++ # LLVM C++ compiler

#C and C++ FLAGS-----------------
CFLAGS = -I -march=native -m64 -O2 -Wall -Wextra -pendantic -Wfatal-errors -fexpensive-optimizations
CXXFLAGS = -std=c++14 -Weffc++ $(CFLAGS)
LDFLAGS = 
SOURCES = main.cpp
DEPS = 
PROGRAM = 
#---------------------------------

all: $(SOURCES)
	$(CC) -o $(PROGRAM) $(CXXFLAGS) $(LDFLAGS) $(DEPS) $(SOURCES)
