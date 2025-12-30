# Nanopore AMR Workflow – Northern Nigeria

This repository documents the bioinformatics workflows used for bacterial genome assembly, taxonomic identification, and antimicrobial resistance (AMR) gene detection using nanopore sequencing.

The workflows support the manuscript:
"Improving local diagnostic capacity for microbiological identification and antimicrobial resistance gene detection in Northern Nigeria using portable nanopore sequencing."

## Overview
Genome assembly was performed on a high-performance computing (HPC) cluster using command-line tools. Downstream taxonomic classification and AMR gene detection were conducted using the Galaxy Bioinformatics platform (https://usegalaxy.org).

## Workflow Summary
1. Basecalled nanopore reads (FASTQ) were assembled using Flye on a high-performance computing (HPC) system.
2. Assembled contigs were uploaded to the Galaxy Bioinformatics platform for taxonomic classification using Kraken2.
3. Assembled contigs were uploaded to the Comprehensive Antimicrobial Resistance Database (CARD) for AMR gene detection.
4. Assembled contigs were uploaded to ResFinder via the Danish Technical University Center for Genomic Epidemiology for AMR gene detection.

## Repository Structure

- `hpc/` – Command-line scripts used for genome assembly
- `galaxy/` – Documentation of Galaxy-based analyses and parameters
- `software_versions.txt` – Software tools and versions used

## Data Availability
Raw nanopore sequencing data were generated from bacterial isolates. Data availability is described in the associated manuscript.



