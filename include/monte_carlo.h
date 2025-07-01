#ifndef MONTE_CARLO_H
#define MONTE_CARLO_H

#include "thread_args.h"
#include "jbutil.h"
#include <pthread.h>

const double a = -2.0;
const double b = 2.0;
const double A = 0.0;
const double B = 0.5;

// Estimation function for integration
double f(double x);

// Thread-safe Monte Carlo Function with loop unrolling
void ThreadMC(ThreadArgs* threadArgs);

// Monte Carlo Method
void MonteCarlo(const int N);

#endif
