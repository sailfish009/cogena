% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geneExpInCluster.R
\name{geneExpInCluster}
\alias{geneExpInCluster}
\alias{geneExpInCluster,cogena-method}
\alias{geneExpInCluster,cogena_methods}
\title{Get gene names in each clusters and the expression profiling.}
\usage{
geneExpInCluster(object, method, nCluster)

\S4method{geneExpInCluster}{cogena}(
  object,
  method = clusterMethods(object),
  nCluster = nClusters(object)
)
}
\arguments{
\item{object}{a genecl or cogena object}

\item{method}{as clMethods in genecl function}

\item{nCluster}{as nClust in cogena function.}
}
\value{
a list containing a matrix of cluster_id with expression profiling 
and label a vector of the sample labels.
}
\description{
Get gene names in each clusters and the expression profiling. This output 
is helpful if user want to analyse the data for other application.
}
\examples{
data(Psoriasis)
annofile <- system.file("extdata", "c2.cp.kegg.v7.01.symbols.gmt.xz", 
package="cogena")

\dontrun{
genecl_result <- coExp(DEexprs, nClust=2:3, clMethods=c("hierarchical","kmeans"), 
    metric="correlation", method="complete", ncore=2, verbose=TRUE)

clen_res <- clEnrich(genecl_result, annofile=annofile, sampleLabel=sampleLabel)

#geneExpInCluster
geneExp <- geneExpInCluster(clen_res, "kmeans", "3")
}

}
\seealso{
\code{\link{clEnrich}}
}
