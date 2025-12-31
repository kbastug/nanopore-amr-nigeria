# In Silico Serotyping and Virulence Gene Detection

## Source
Results generated using the Danish Technical University Center for Genomic Epidemiology (CGE) web tools.

Online report reference:  
https://cge.food.dtu.dk/cgi-bin/webface.fcgi?jobid=69553B3E00004298C0C915F3

## Tools Used
- **VirulenceFinder** (identifies virulence-associated genes including toxin genes)
- Analysis based on assembled genome FASTA files.
- Threshold set to 100% match

## Input Files
- `JUTH_Ecoli_01.fasta`
- `JUTH_Ecoli_02.fasta`

## Summary of Results

### Isolate: JUTH_Ecoli_01
- **Virulence genes identified:**
  - Cea, csgA, fimH, gad, mchC, mchF, terC, traT
  - No Shiga-toxin producing genes

### Isolate: JUTH_Ecoli_02
- **Virulence genes identified:**
  - cib
  - cma
  - etsC
  - fimH
  - gad
  - hlyF
  - iroN
  - iss
  - papA_F19
  - sitA
  - tia
  - traJ
  - traT
  - tsh

## Notes
- Default thresholds from the CGE tools were used unless otherwise specified.
- Presence of Shiga toxin genes (e.g., *stx1*, *stx2*) is necessary to confirm STEC designation; absence indicates that serotype assignment alone does not confirm Shiga toxin–producing capability.
- CGE results were downloaded on [12/31/2025].

