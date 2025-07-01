CXX = g++
CXXFLAGS = -O3 -std=c++17 -pthread -march=native -fopenmp
TARGET = monte_carlo
SRCDIR = src
INCDIR = include
SOURCES = $(SRCDIR)/monte_carlo.cpp
OBJECTS = $(SOURCES:.cpp=.o)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -I$(INCDIR) -o $@ $^

$(SRCDIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) -I$(INCDIR) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

run: $(TARGET)
	./$(TARGET)
