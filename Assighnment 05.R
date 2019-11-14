rm(list=ls(all=TRUE))
cat("\014")

header <- read.table("CPIAUCSL (1).csv", header = TRUE,
                     sep=",", nrow = 1)
CPIAUCSL (1) <- fread("CPIAUCSL (1).csv",
                      skip=1, sep=",",header=FALSE,
                      data.table=FALSE)
setnames(CPIAUCSL (1), colnames(header))
rm(header)