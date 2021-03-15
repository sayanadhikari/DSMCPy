##
## @file		makefile
## @brief		DSMCPy makefile.
## @author	Sayan Adhikari <sayan.adhikari@fys.uio.no>
##

# the virtual environment directory
VENV := venv

# Source directory
SRC := src

# Figure directory
FIG := figures
# default target, when make executed without arguments
all: venv
	@echo "Creating virtual environment for running the code"
$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	./$(VENV)/bin/pip install -r requirements.txt
	mkdir $(FIG)

# venv is a shortcut target
venv: $(VENV)/bin/activate

run: venv
	@echo "==================================================================="
	@echo "Running DSMCPy (Direct Simulation Monte Carlo With Python)"
	@echo "Author: Dr. Sayan Adhikari, PostDoc @ UiO, Norway"
	@echo "Source: Dr. Philip Mocz, Computational Astrophysicist @ Princeton, NJ"
	@echo "Input: Edit input.ini file to change the parameters for simulation"
	@echo "==================================================================="
	./$(VENV)/bin/python3 $(SRC)/main.py

clean:
	@echo "Cleaning compiled files..."
	rm -rf $(VENV)
	rm -rf $(FIG)
	find . -type f -name '*.pyc' -delete

.PHONY: all venv run clean
