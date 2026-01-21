# Antimicrobial Resistance (AMR) Gene Detection

## Source
Antimicrobial resistance (AMR) gene detection was performed using two publicly available, web-based tools on assembled whole-genome FASTA files.

---

## Tools Used

### CARD v4.0.1  (Resistance Gene Identifier, RGI Main v6.0.5) accessed via the Danish Technical University (DTU) Center for Genomic Epidemiology (CGE)

- **Platform:** Comprehensive Antimicrobial Resistance Database (CARD)
- **Tool:** RGI (web-based interface)
- **Analysis type:** Whole-genome sequence (FASTA)
- **Organism selection:** Species-specific when available (Escherichia coli)
- **Threshold for reporting:** 100% match

### ResFinder

- **Platform:** ResFinder via the Danish Technical University Center for Genomic Epidemiology (CGE)
- **Analysis type:** Whole-genome sequence (FASTA)
- **Threshold for reporting:** 100% match
- **Purpose:** Identification of clinically interpretable acquired resistance genes and chromosomal loci associated with phenotypic resistance
- **Note:** Acquired resistance gene hits are illustrated in the associated manuscript

---

## Input Files

- `JUTH_Ecoli_01.fasta`
- `JUTH_Ecoli_02.fasta`

---

## Analysis Summary

Assembled genome FASTA files were independently uploaded to CARD and ResFinder for AMR gene detection. 

CARD: Individual contigs were uploaded to CARD and analyzed for “Perfect and Strict hits only,” excluding nudge, and used the “High quality/coverage” input parameter. Only hits with 100% similarity (“Perfect”) were counted. 

ResFinder: Complete FASTA files were uploaded to ResFinder, which searched for acquired AMR gene hits and chromosomal mutations mediating AMR. Match criteria was set to 100% accuracy and minimum 60% length for the organism “Escherichia coli.”
---

## Notes

- Analyses were performed using default settings unless otherwise specified.
- AMR gene detection was performed for research and surveillance purposes and does not replace phenotypic antimicrobial susceptibility testing.

---

## Citations

- The Galaxy Community. *The Galaxy platform for accessible, reproducible, and collaborative data analyses: 2024 update.* **Nucleic Acids Research**, 2024; gkae410.  
  https://doi.org/10.1093/nar/gkae410

- Wood DE, Salzberg SL. (2014). *Kraken: ultrafast metagenomic sequence classification using exact alignments.* **Genome Biology**, 15(3):R46.  
  https://doi.org/

- Bortolaia V, Kaas RS, Ruppe E, Roberts MC, Schwarz S, Cattoir V, Philippon A, Allesoe RL, Rebelo AR, Florensa AR, Fagelhauer L, Chakraborty T, Neumann B, Werner G, Bender JK, Stingl K, Nguyen M, Coppens J, Xavier BB, Malhotra-Kumar S, Westh H, Pinholt M, Anjum MF, Duggett NA, Kempf I, Nykäsenoja S, Olkkola S, Wieczorek K, Amaro A, Clemente L, Mossong J, Losch S, Ragimbeau C, Lund O, Aarestrup F. M.
(2020). ResFinder 4.0 for predictions of phenotypes from genotypes. Journal of Antimicrobial Chemotherapy, 75(12),3491-3500

- Camacho C, Coulouris G, Avagyan V, Ma N, Papadopoulos J, Bealer K, Madden TL.
(2009). BLAST+: architecture and applications. BMC Bioinformatics 10(1):421
