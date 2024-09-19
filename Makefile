# Makefile for heedong_CV (using LaTeX) 

TEX_FILE = main.tex
OUTPUT_PDF = heedong_cv.pdf
LATEXMK_OPTS = -pdf -interaction=nonstopmode -shell-escape

# Default target (build PDF)
all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(TEX_FILE)
	latexmk $(LATEXMK_OPTS) -jobname=$(basename $(OUTPUT_PDF)) $(TEX_FILE)

# Clean target (remove intermediate files)
clean:
	latexmk -C -jobname=$(basename $(OUTPUT_PDF))


.PHONY: all clean 
