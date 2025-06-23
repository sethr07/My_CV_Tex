SRC=src
BIN=bin

# CVs
CV=cv.tex

.PHONY: build-cv
build-cv:
	@if [ -z "$(COMPANY)" ]; then \
		echo "Error: Please provide a company name using COMPANY=<name>"; \
		echo "Usage: make build-cv COMPANY=CompanyName"; \
		exit 1; \
	fi
	@echo "Building CV for $(COMPANY)..."
	@cd $(SRC) && pdflatex $(CV)
	@cd $(SRC) && mv cv.pdf ../$(BIN)/RS-CV-$(COMPANY).pdf
	@echo "CV built successfully as RS-CV-$(COMPANY).pdf in $(BIN) directory"
