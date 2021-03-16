# DSMCPy (Direct Simulation Monte Carlo With Python)

A python code to simulate dilute gas with DSMC (Direct Simulation Monte Carlo). [Numba JIT compiler](https://numba.pydata.org/) for Python has been implemented for faster performance. User can disable Numba for live graphics mode in the _input.ini_ file.

## Problem
Rayleigh Problem = gas between 2 plates ([Alexander & Garcia, 1997](https://doi.org/10.1063/1.168619))

## Contributors
- [Sayan Adhikari](https://github.com/sayanadhikari), UiO, Norway. [@sayanadhikari](https://twitter.com/sayanadhikari)
- [Rinku Mishra](https://github.com/rinku-mishra), CPP-IPR, India. [@arra4723](https://twitter.com/arra4723)

## Source 
[Philip Mocz](https://github.com/pmocz/dsmc-python), Princeton Univeristy, [@PMoc](https://twitter.com/PMocz)

More details: http://www.algarcia.org/Pubs/DSMC97.pdf

Installation
------------
#### Prerequisites
1. [make buildsystem](https://www.gnu.org/software/make/)
2. [python3 or higher](https://www.python.org/download/releases/3.0/)
3. [git](https://git-scm.com/)

#### Procedure
First make a clone of the master branch using the following command
```shell
git clone https://github.com/sayanadhikari/DSMCPy.git
```
Then enter inside the *DSMCPy* directory 
```shell
cd DSMCPy
```
Now complile and built the *DSMCPy* code
```shell
make all
``` 
Usage
-----
Upon successful compilation, run the code using following command
```shell
make run
```
Parameter Setup
----------------------
Edit the _input.ini_ and run the code again. The basic structure of _input.ini_ is provided below,
```ini
;
; @file		input.ini
; @brief	DSMCPy inputfile.
; @author	Sayan Adhikari <sayan.adhikari@fys.uio.no>
;
scope = default

[grid]
Ncell = 50    ; number of cells
Nz    = 10    ; Length of the box in terms of mean free path

[particles]
n0   = 0.001  ; density
N    = 50000  ; number of sampling particles

[boundary]
uw   = 0.2     ; lower wall velocity
Tw   = 1       ; wall temperature

[time]
Nmft = 20       ; number of mean-free times to run simulation
Nt   = 200      ; (25*Nmft) number of time steps (25 per mean-free time)
Nsim = 2        ; number of simulations to run

[options]
plotRealTime  = True  ;
plotFigure    = True
useNumba      = True  ;set to false to disable Numba
```

