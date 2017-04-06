# debug flags
CC:=-O0 -g3
# release flags
# CC:=-O3

CC:=gcc -std=c11 $(CC)
LIBFLAGS:=-shared -fPIC -lc -o libcrs.so

libcrs.so : reed-solomon.c polynomial.c encode.c decode.c
	$(CC) $(LIBFLAGS) $^
