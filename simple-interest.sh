#!/usr/bin/env bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

# Usage:
#   ./simple-interest.sh
#   ./simple-interest.sh <P> <R> <T>

if [ $# -eq 3 ]; then
  P=$1
  R=$2
  T=$3
else
  echo -n "Enter Principal (P): "
  read P
  echo -n "Enter Rate of Interest (R): "
  read R
  echo -n "Enter Time (T in years): "
  read T
fi

SI=$(echo "scale=2; ($P * $R * $T)/100" | bc -l)
echo "Simple Interest = $SI"
