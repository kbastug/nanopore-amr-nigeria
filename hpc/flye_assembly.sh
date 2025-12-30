#!/bin/bash
#
# Flye genome assembly for nanopore reads
# Slurm job script used for bacterial isolate assemblies


#SBATCH --job-name=flye_barcode_01
#SBATCH --output=flye_output_%j.log
#SBATCH --error=flye_error_%j.log
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --time=48:00:00
#SBATCH --partition=standard

# Flye assembly of nanopore reads from barcode_01
# Executed on a high-performance computing (HPC) cluster
# Note: Flye was run with --threads 16; actual CPU usage depended on scheduler allocation.

flye \
  --nano-raw /home/thie0149/bastu004/Rebasecalled_JUTH/barcode_01/*.fastq \
  --out-dir /home/thie0149/bastu004/flye_output/barcode_01 \
  --threads 16

