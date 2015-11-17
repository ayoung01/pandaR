test_removemissing <- function(){
  data(pandaToyData)
  motif <- pandaToyData$motif
  ppi <- pandaToyData$ppi
  # annoyingly, columns of pandaToyData are of class factor
  motif$V1 <- as.character(motif$V1)
  motif$V2 <- as.character(motif$V2)
  motif$V3 <- as.numeric(motif$V3)
  
  ppi$V1 <- as.character(ppi$V1)
  ppi$V2 <- as.character(ppi$V2)
  ppi$V3 <- as.numeric(ppi$V3)
  
  # add motif edges that target genes missing in the expression data
  motif <- rbind(motif, c("AHR", "MISSING_GENE", 1))
  # add PPI edges between TFs not present in the motif
  ppi <- rbind(ppi, c("AHR", "MISSING_TF1", 1))
  ppi <- rbind(ppi, c("MISSING_TF2", "AHR", 1))
  ppi <- rbind(ppi, c("MISSING_TF1", "MISSING_TF3", 1))
  panda.r <- panda(motif, pandaToyData$expression, ppi,
                   edgelist=TRUE,
                   remove.missing.ppi=TRUE,
                   remove.missing.motif=TRUE,
                   remove.missing.genes=TRUE)
  reg.r <- panda.r@regNet
  checkTrue(class(reg.r)=="data.frame")
  checkTrue(all(reg.r$TF%in%pandaToyData$motif[,1]))
  checkTrue(all(!reg.r$TF%in%c("MISSING_TF1","MISSING_TF2","MISSING_TF3")))
  checkTrue(all(!reg.r$Gene%in%pandaToyData$motif[,2]))
}
