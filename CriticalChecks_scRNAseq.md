# **Critical Checks for scRNA-seq Data Analysis**

To get the high qulaity results in the Single-cell RNA-seq data analysis one should make sure avoiding common pitfalls. Here is the detailed checklist provide essential steps and metrics to ensure detailed QC check and at each step.

---

## **1. QC Metrics**
Low quality cells can ruin the results. So its important to carefully assess the quality of your single-cell data. Key parameters are:
- **Mitochondrial Content**: Cells with high mitochondrial gene percentages might indicate stress or dead cells.
- **Total UMI Count**: Cells with abnormally low total UMI counts might be doublets or low-quality cells.
- **Gene Counts**: Monitor cells with very low gene counts (<500); these may lack biological signal.
- **Doublets**: Use computational tools (e.g., **DoubletFinder**) to identify potential doublets in your dataset.
- **Cell Viability**: Look for other markers of dead or damaged cells.

---

## **2. Normalization Methods**
Normalization is a stardard practice for any given dataset however over-normalization can distort the biological signals. Here are few key considerations to ensure proper data normalization:
- Use scaling approaches compatible with downstream analysis tools (e.g., log-normalization or SCTransform).
- Check the effect of normalization on preserving biological signals.
- Select the normalziation method depending on your data and analysis goals

---

## **3. Dimensionality Reduction**
Before clustering, inspect dimensionality reduction steps:
- Perform PCA and inspect elbow plots to select an appropriate number of PCs.
- Verify that UMAP or t-SNE clusters reflect meaningful biology rather than batch effects.

---

## **4. Batch Correction**
If you’re working with multiple datasets:
- Assess batch effects using tools like **Harmony**, **Seurat**, or **Scanorama**.
- Ensure biological signal is preserved while batch effects are removed.
- Cell type mixing (**ARI**, or **Silhouette** scores), Batch mixing scores (**kBET**), Entropy of Batch mixing; and Local Inverse Simpson's Index (**LISI**) can be used to access bactch effects.
- Use UMAP or tSNE to visually acess the Integration. Well integrated datasets shows overlapping clusters of similar Cell Types.

---

## **5. Clustering**
Clustering is an useful unsupervised method for pattern recongnition. However, its importat to select the proper clustering method as well as the Resolution.
- If the ressolution is **too low** then we can miss the rare populations.
- If the ressolution is **too high** then we get meaningless splits.
- We can avoid over-clustering or under-clustering by experimenting with resolution parameters.
- Verify clusters correspond to known cell types or biological conditions.
- If not then change either resolution parameters **or** change clustering method (compute number of optimum clusters)

---

## **6. Differential Gene Expression (DGE)**
For robust DGE analysis:
- Use appropriate statistical tests (e.g., Wilcoxon rank-sum test).
- Correct for multiple testing (e.g., FDR).
- Check if marker genes for clusters match expected biology.

---

## **7. Annotation**
Annotate clusters carefully:
- Use marker gene databases (e.g., PanglaoDB, CellMarker) to identify cell types.
- Manually review annotations to ensure accuracy.
- Use multiple methods (**singleR**, **CellTypist**) of cell annotations and then calculate **Adjusted Rand Index (ARI)** or **Normalized Mutual Information (NMI)** between annotations if you have a reference or high-confidence annotations.

---

## **8. Integration **
When combining datasets: purpose is remove batchc effects to properly align different datasets. 
* Following integration methods can be used: Feature based; Dimentionality reduction based; Anchor based; Graph based; Matrix factorization and Neural Networks
- Evaluate integration quality with metrics like **ARI**, **Silhoette** score, **kBET**, and/or **LISI**. 
- Check that cell types are well-mixed across batches after integration. By checking if same type of cells are cluster together and/or degree of mixing between batches

---

## **9. Visualization**
For all visualizations (UMAP, t-SNE, heatmaps):
- Ensure proper scaling and normalization.
- Label plots clearly for interpretation and reproducibility.

---

By following this checklist, you can ensure that your scRNA-seq analysis is robust, interpretable, and free from common mistakes.
Contact: Ashok K. Sharma; **compbiosharma@gmail.com**
