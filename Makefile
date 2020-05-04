TARGET = tmp/main.pdf
COMPILER = latexmk
FLAGS = -pdf -shell-escape -output-directory=tmp

.PHONY: default all clean $(TARGET)

SOURCES = $(wildcard *.tex)
default: $(TARGET)
all: default

$(TARGET): $(SOURCES)
	$(COMPILER) $(FLAGS) main.tex

clean:
	rm -rf tmp/*
