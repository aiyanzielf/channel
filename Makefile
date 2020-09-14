CC=gcc
CXX=g++
RANLIB=ranlib
LD=ld
LDXX=g++
AR=ar
STRIP=strip

CXXFLAGS += -I ./ -gstabs -std=c++11
LDFLAGS = -pthread -latomic

TARGET=test

SRC:=$(wildcard ./*.cpp)

OBJS:=$(SRC:.cpp=.o)

.PHONY: $(TARGET) clean debug

all: $(TARGET)
	$(RM) $(OBJS)

$(TARGET): $(OBJS)
	$(CXX) -s $^ -o $@ $(LDFLAGS)

clean:
	$(RM) $(OBJS) $(TARGET)

debug: $(OBJS) 
	$(CXX) -g $^ -o $@ $(LDFLAGS)
	$(RM) $(OBJS)
	mv debug $(TARGET)