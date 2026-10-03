# Nanopore AMR Workflow – Northern Nigeria

This repository documents bioinformatics workflows used for bacterial identification, genome assembly, antimicrobial resistance (AMR) gene characterization, and selected downstream genomic analyses following portable Oxford Nanopore sequencing in northern Nigeria.

The workflows support the manuscript:

**“Improving local diagnostic capacity for microbiological identification and antimicrobial resistance gene detection in Northern Nigeria using portable nanopore sequencing.”**

## Overview

Nanopore sequencing was performed on site at Jos University Teaching Hospital (JUTH), Nigeria. Raw nanopore sequencing data were subsequently re-base-called and analyzed using a combination of high-performance computing resources at the Minnesota Supercomputing Institute (MSI), publicly available web-based bioinformatics platforms, and freely available command-line tools.

The primary workflow included:

1. Nanopore basecalling, quality filtering, and demultiplexing
2. De novo bacterial genome assembly
3. Assembly quality assessment
4. Taxonomic identification of assembled genomes
5. Genome annotation and average nucleotide identity analysis
6. Taxonomic analysis of raw reads when assembly was unsuccessful
7. AMR gene characterization
8. Plasmid analysis for isolates containing AMR determinants
9. In-silico serotyping of *Escherichia coli* isolates
10. Additional sample-specific analyses when initial genomic findings suggested mixed organisms or highly fragmented assemblies

## Workflow Summary

### 1. Nanopore basecalling and demultiplexing

Sequencing was performed using Oxford Nanopore technology and MinKNOW.

All POD5 files were subsequently re-base-called using Dorado with the super-high-accuracy model:

`dna_r10.4.1_e8.2_400bps_sup@v4.3.0`

A minimum read quality threshold of **Q10** was applied to sequencing reads used for downstream analysis.

Demultiplexing performance was assessed by comparing reads assigned to expected sample barcodes with the total number of reads subjected to barcode classification. Reads not assigned to a barcode were recorded as unclassified.

### 2. De novo genome assembly

Quality-filtered FASTQ files were assembled de novo using **Flye v2.9.5-b1801** on MSI.

Assembly commands and HPC examples are provided in the `hpc/` directory.

### 3. Assembly quality assessment

Assembly completeness was assessed using **BUSCO v6.0.0** with the **`bacteria_odb10`** lineage dataset on MSI.

BUSCO completeness and duplication were used as complementary measures of genome completeness and to identify assemblies requiring additional investigation. BUSCO completeness was not interpreted as a direct measure of base-level assembly accuracy.

### 4. Taxonomic identification

Successfully assembled bacterial genomes were evaluated using multiple complementary taxonomic identification approaches:

- **KmerFinder** through the Center for Genomic Epidemiology (CGE)
- **Kraken2** through the Galaxy Bioinformatics platform
- **Kraken2** using a local installation on MSI
- **Pathogenwatch**, including the Speciator species-identification workflow
- Manual cross-referencing using the **NCBI Taxonomy Browser**

Use of multiple methods allowed comparison of taxonomic assignments across independent tools and reference databases.

### 5. Genome annotation and average nucleotide identity

Assemblies were annotated using **Prokka** to estimate predicted bacterial coding sequences.

**FastANI** was used to calculate average nucleotide identity between assembled genomes and selected reference genomes identified through KmerFinder.

### 6. Analysis of samples without successful genome assembly

For samples that did not generate a successful de novo assembly, quality-filtered raw sequencing reads were analyzed using **Kraken2 on MSI**.

Raw sequencing reads were not uploaded to public web-based analysis platforms because of the possibility that unassembled reads could contain human sequence data.

### 7. Sample-specific genomic analyses

Additional analyses were performed when initial results required further investigation.

For an assembly with a high BUSCO duplication score and evidence suggesting more than one organism, individual contigs were analyzed using **KmerFinder** and **FastANI**.

For a known *Paenibacillus polymyxa* specimen that generated a highly fragmented de novo assembly, reference-guided scaffolding was performed using **RagTag** and reference genome `NZ_CP024795.1`.

### 8. Antimicrobial resistance gene characterization

Assemblies with successful species identification were evaluated using two complementary AMR databases:

- **Comprehensive Antimicrobial Resistance Database (CARD)** using RGI
- **ResFinder** through CGE

Unless otherwise specified, analyses used:

- Minimum nucleotide identity: **100%**
- Minimum sequence coverage: **60%**

For CARD analyses, only **Perfect** and **Strict** hits were retained. Nudge hits were excluded, and the high-quality/coverage option was applied.

The two platforms were used to compare AMR findings generated from independently maintained resistance databases.

### 9. Plasmid analysis

For specimens containing one or more detected AMR genes, **PlasmidFinder** was used to evaluate whether identified resistance determinants were associated with plasmid sequences.

PlasmidFinder analyses used:

- Minimum nucleotide identity: **100%**
- Minimum sequence coverage: **60%**

### 10. *Escherichia coli* serotyping

For assembled genomes identified as *Escherichia coli*, in-silico serotyping was performed using two complementary approaches:

- **SerotypeFinder** through CGE
- **ECTyper** on MSI

These tools evaluate O- and H-antigen-associated genes to support genomic serotype assignments.

## Repository Structure

- `hpc/` – Example command-line and HPC scripts used for basecalling, assembly, and other MSI-based analyses
- `analysis/` – Documentation of downstream analyses, parameters, and example workflows
- `software_versions.txt` – Software, database, model, and platform versions used in the study
- `README.md` – Overview of the bioinformatics workflow and repository organization

## Reproducibility

This repository is intended to document the computational workflow used in the associated manuscript rather than provide a fully automated end-to-end pipeline.

Because several analyses were conducted using web-based platforms, exact software versions, database versions, analysis thresholds, and other available reproducibility information are recorded in `software_versions.txt` and the corresponding analysis documentation.

Example command-line workflows are provided for analyses performed on MSI.

## Data Availability

Raw nanopore sequencing data were generated from bacterial isolates. Availability of study sequencing data is described in the associated manuscript.

Raw reads were not uploaded to public analysis services during analyses of specimens that failed assembly because of the possibility that sequencing reads could contain human DNA.

## Software and Platforms

The workflow used software and resources including:

- Oxford Nanopore MinKNOW
- Dorado
- Flye
- BUSCO
- KmerFinder
- Kraken2
- Galaxy
- NCBI Taxonomy Browser
- Pathogenwatch / Speciator
- Prokka
- FastANI
- RagTag
- CARD / RGI
- ResFinder
- PlasmidFinder
- SerotypeFinder
- ECTyper

Exact versions and database information are provided in `software_versions.txt`.
