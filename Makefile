CXXFLAGS += -Iinclude -pthread -std=c++17 -Wall

all: mtfind

mtfind: src/Thread.cpp src/SearchThread.cpp src/mtfind.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

test:
	./mtfind /etc/passwd root 4

clean:
	rm -f mtfind *.d

.PHONY: all clean
