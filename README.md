# Single-Cell RNA-Seq Data Analysis Tutorial  

**Single-Cell RNA-Seq Data Analysis Tutorial** provides step-by-step guidance for analyzing publicly available single-cell RNA-seq datasets. This tutorial uses the dataset titled **"Single-cell RNA-seq analysis of stromal vascular cells (SVCs) isolated from primary adipose tissue"**, reanalyzing healthy and Crohn's disease samples to explore differences in cell-cell communication and pathway enrichment.  

The detailed tutorial is in the file `scRNAseq_CrF_Tutorial.Rmd`, with each step organized into sections.  
- **Raw Data**: Found in the `Data` folder.  
- **Processed Data**: Including Seurat objects, stored in the `ProcessedData` folder.
---

## Overview of Steps  
### Main Steps:
1. **STEP 1**: Download data, load, and create Seurat object.  
2. **STEP 2**: Perform quality control (QC) and filtering.  
3. **STEP 3**: Normalize, scale, and conduct downstream analyses, including ordination and clustering.  
4. **STEP 4**: Annotate cell types:  
   - (1) Using known GI-specific markers.  
   - (2) Using SingleR with reference datasets.  
5. **STEP 5**: Identify markers:  
   - (1) Cluster-specific markers.  
   - (2) Disease-specific markers.  
   - (3) Markers for selected clusters or combinations.  
6. **STEP 6**: Perform pathway enrichment analysis.  
7. **STEP 7**: Analyze cell-cell communication using CellChat.  

### Additional Sections:
- Checks for data at various stages (e.g., normalization, clustering).  
- Comparisons of clustering methods using external libraries.
---

## Dataset  
- **Title**: *Single-cell RNA-seq analysis of stromal vascular cells (SVCs) from primary adipose tissue*.  
- **Accession**: [GSE156776](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE156776).  
- **Description**: Stromal vascular cells from adipose tissue in healthy and Crohn’s disease patients.  
- **Data**: Stored in the `Data` folder (raw) and `ProcessedData` folder (processed).  
---

## Libraries Used  
The analysis uses the following R libraries:  
`ggplot2`, `tidyverse`, `gridExtra` (for visualization), `Seurat` (for creating objects), `mclust` (for clustering comparison), `SingleR`, `celldex`, `HCAData` (for cell type annotation), `clusterProfiler`, `org.Hs.eg.db` (for pathway enrichment analysis), and `CellChat` (for cell-cell communication analysis).

---
## Getting Started  

### Installation
To install the required packages, use the following methods:

#### From `requirements.txt`
The `requirements.txt` file contains all the necessary packages with specified versions. You can install them by running the provided R script:

```bash
Rscript install.R
```
#### For Manual insatllations
```bash
install.packages("package_name") Or
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("package_name") Or
install.packages("devtools")
devtools::install_github("username/package_name")
```
### Clone this repository to your local machine:
```bash
git clone https://github.com/yourusername/SingleCell_CrohnAnalysis.git
cd SingleCell_CrohnAnalysis
```
### Contact
🤚 Important
For any questions, please contact: 👉 Ashok K. Sharma; ashoks773@gmail.com


