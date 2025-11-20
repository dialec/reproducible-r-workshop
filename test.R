library(Seurat)


# load package and confirm version
library(dplyr)
packageVersion("dplyr")

# Load some data
df <- data.frame(
  genotype = c("WT", "WT", "WT", "WT", "WT", "WT", "WT", "WT", "WT", "WT", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del", "mad2_del"),
  drug = c("none", "none", "none", "none", "none", "nocodazole", "nocodazole", 
           "nocodazole", "nocodazole", "nocodazole", "none", "none", "none", 
           "none", "none", "nocodazole", "nocodazole", "nocodazole", 
           "nocodazole", "nocodazole"),
  treatment = c("WT_no_drug", "WT_no_drug", "WT_no_drug", "WT_no_drug", "WT_no_drug", "WT_nocodazole", "WT_nocodazole", "WT_nocodazole", "WT_nocodazole", "WT_nocodazole", "mad2_del_no_drug", "mad2_del_no_drug", "mad2_del_no_drug", "mad2_del_no_drug", "mad2_del_no_drug", "mad2_del_nocodazole", "mad2_del_nocodazole", "mad2_del_nocodazole", "mad2_del_nocodazole", "mad2_del_nocodazole"),
  OD_change = c(3.2, 2.8, 3.1, 3.3, 2.6, 1.2, 1.5, 1.3, 1.9, 0.7, 2.7, 2.9, 3.0, 2.5, 3.1, 2.2, 2.4, 2.9, 2.5, 2.7)
)

# Remove duplicates
distinct(df,drug)