library(cluster)
library(factoextra)

input <- function(inputfile) {
  #parameters <<- read.table(inputfile, as.is=T);
  #rownames(parameters) <<- parameters[,1];
  X <- read.csv(inputfile, header=TRUE)
  rownames(X) <- X[,1]
  X <- X[,-1]
  results <<- scale(X)
  n_clust <- fviz_nbclust(results, pam, method = "silhouette",k.max = 30)
  n_clust <- n_clust$data
  numclusters <<- as.numeric(n_clust$clusters[which.max(n_clust$y)]) 
}

run <- function() {
   m.res <<- pam(results, numclusters)
}

output <- function(outputfile) {
   write.csv(m.res$clustering, outputfile)
}
