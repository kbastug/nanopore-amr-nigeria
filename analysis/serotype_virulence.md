# In Silico Serotyping of Escherichia coli Isolates

## Overview

In-silico serotyping was performed for the two assembled genomes identified as *Escherichia coli* using two complementary approaches:

1. **SerotypeFinder** through the Danish Technical University Center for Genomic Epidemiology (CGE)
2. **ECTyper** using the Minnesota Supercomputing Institute (MSI)

Both tools were used to support assignment of O- and H-antigen serotypes.

## Input Files

- `JUTH_Ecoli_01.fasta`
- `JUTH_Ecoli_02.fasta`

## SerotypeFinder

SerotypeFinder was accessed through the CGE web platform.

- Tool version: 2.0
- Software version: 2.0.1 (2020-07-27)
- Database version: 1.0.0 (2022-05-16)
- Minimum identity threshold: 95%
- Minimum coverage threshold: 60%
- Input: assembled genome FASTA files

SerotypeFinder identifies genes associated with *E. coli* O- and H-antigen serotypes and reports sequence identity and coverage for detected targets.

## ECTyper

ECTyper was run locally on MSI.

- ECTyper version: 2.0.0
- Database version: 1.0
- Input: assembled genome FASTA files

ECTyper identifies O- and H-antigen-associated genes, including loci such as `wzx`, `wzy`, and `fliC`, using its internal alignment and scoring criteria.

Percent identity and sequence coverage for detected serotype-associated genes were extracted from the output and used to support serotype assignments.

## Interpretation

Serotype assignments were based on concordant or complementary evidence from SerotypeFinder and ECTyper. O- and H-antigen predictions were interpreted using the sequence identity, coverage, and gene-detection results reported by each platform.

These analyses were used for serotype identification only. Virulence gene detection was not included in the final analysis workflow described in the manuscript.
