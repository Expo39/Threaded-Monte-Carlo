# Monte Carlo Threading

A multi-threaded Monte Carlo integration implementation optimised for numerical computation. This project demonstrates parallel programming techniques using C++ threading for mathematical integration problems.

## Overview

This project implements Monte Carlo numerical integration using multi-threading to estimate definite integrals. The implementation focuses on thread-safe random number generation, load balancing across CPU cores, and loop unrolling optimizations for maximum computational efficiency.

### Key Features

- **Multi-threaded Computation**: Parallel Monte Carlo sampling across multiple CPU cores
- **Thread-safe Random Generation**: Independent random number generators per thread
- **Loop Unrolling**: 4x unrolled sampling loops for improved performance
- **Load Balancing**: Optimal work distribution across available threads
- **High Precision**: Handles large sample sizes (10^8+ samples) efficiently

## Algorithm

The implementation estimates the integral of a Gaussian function using the Monte Carlo method:
- **Function**: Standard normal distribution (μ=0, σ=1)
- **Integration bounds**: x ∈ [-2, 2], y ∈ [0, 0.5]
- **Method**: Random sampling with rejection sampling
- **Validation**: Comparison with analytical result using error function

## Building the Project

```bash
make
```

## Usage

```bash
./monte_carlo
```

The program automatically:
1. Runs Monte Carlo integration with 100 million samples
2. Uses optimal thread count (8 threads by default)
3. Displays timing and accuracy results
4. Compares with analytical solution

## Technical Details

### Threading Model
- **Thread Pool**: Fixed number of worker threads
- **Work Distribution**: Equal sample count per thread
- **Synchronisation**: Join-based completion detection
- **Random Seeds**: Time-based unique seeding per thread
