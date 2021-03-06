CXX = g++
GCC = gcc
CFLAGS = -O3

all: mnist.o cnnConvolutionImp.o cnnPoolingImp.o blob.o test.o /opt/OpenBlas/lib/libopenblas.a
#		$(CXX) $(CFLAGS) $^ -o $@ -I.  -L/opt/OpenBLAS/lib -lopenblas -lpthread
%.o: %.cpp
		$(CXX) $(CFLAGS) -c $< -I.
%.o: %.c
		$(GCC) $(CFLAGS) -c $< -I.

clean:
		rm *.o

