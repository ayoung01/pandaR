test_panda_r_vs_c <- function() {
  data("pandaToyData")
  panda.r <- with(pandaToyData, panda(motif, expression, ppi))
  reg.r <- melt(panda.r@regNet)
  colnames(reg.r) <- c("TF", "Gene", "Z")
  reg.r <- reg.r[with(reg.r, order(TF, Gene)), ]
  
  reg.c <- read.delim("data/toy_FinalNetwork.pairs")[, c(1,2,4)]
  colnames(panda.c) <- c("TF", "Gene", "Z")
  reg.c <- reg.c[with(reg.c, order(TF, Gene)), ]
  
  checkTrue(1 - cor(reg.c$Z, reg.r$Z, method="Spearman") < 1e-10)
}