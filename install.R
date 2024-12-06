# install.R
required_packages <- c(
  "ggplot2==3.4.0",
  "tidyverse==2.0.0",
  "gridExtra==2.3",
  "Seurat==4.3.0",
  "mclust==6.0.0",
  "SingleR==2.0.1",
  "celldex==1.6.0",
  "HCAData==1.12.0",
  "clusterProfiler==4.8.0",
  "org.Hs.eg.db==3.16.0",
  "CellChat==1.5.0"
)

# Install missing packages
for (pkg in required_packages) {
  package_name <- unlist(strsplit(pkg, "=="))[1]
  package_version <- unlist(strsplit(pkg, "=="))[2]
  if (!requireNamespace(package_name, quietly = TRUE)) {
    devtools::install_version(package_name, version = package_version)
  }
}

