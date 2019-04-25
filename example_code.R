library(Rcpp)
library(RcppArmadillo)
install.packages("BeforeImpute_1.0.tar.gz", repos=NULL)
library(BeforeImpute)
require("readr")
read_csv("BMMC_myeloid.csv.gz")
bmmsc <- bmmsc[,2:ncol(bmmsc)]
keep_cols <- colSums(bmmsc > 0) > 10
bmmsc <- bmmsc[,keep_cols]
LIST <- MAGIC(bmmsc,4,9,TRUE,FALSE)
D <- LIST$D
M <- LIST$M
