# Before-Imputation
This is a re-implementation of MAGIC algorithm by D Van Dijk et al for single-cell imputation. Computes the two matrices used for MAGICImputation (Hosted in MAGIC-Imputation repository)

Example code:
library(Rcpp)
library(RcppArmadillo)
require("readr")
read_csv("BMMC_myeloid.csv.gz")
bmmsc <- bmmsc[,2:ncol(bmmsc)]
keep_cols <- colSums(bmmsc > 0) > 10
bmmsc <- bmmsc[,keep_cols]
LIST <- MAGIC(bmmsc,4,9,TRUE,FALSE)
D <- LIST$D
M <- LIST$M
