% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GeneClassifcation.R
\name{GeneClassificationSparse}
\alias{GeneClassificationSparse}
\alias{geneNames}
\title{Gene Classification With Sparse Structure}
\usage{
GeneClassificationSparse(x, geneNames)

geneNames(gcs)
}
\arguments{
\item{x}{a named list of integer vectors, each vector is named after a motif,
integers describe indice for genes in which the motif was detected.}

\item{geneNames}{character vector with gene names which describes indices in
\code{x}.}

\item{gcs}{an object of 'GeneClassificationSparse' class}
}
\value{
\code{GeneClassificationMatrix} returns new \code{GeneClassificationSparse}
object

\code{geneNames} returns geneNames from \code{GeneClassificationSparse}
object
}
\description{
Wrap a list of integer vectors, which indicate the genes in
which the motifs are present for use in
\code{\link{calculateMassContingencyTablePvalues}}
}
\details{
\code{GeneClassificationSparse} adds \code{geneNames} as attribute to
\code{x} and adds \code{'GeneClassificationSparse'} to classes of \code{x}
}
\examples{
 x <- list(
    elem1=c(1,2,3),
    elem2=c(2, 5),
    elem3=c(10, 6)
)
genes <- paste0('gene', 1:10)
gcs <- GeneClassificationSparse(x, genes)

gcs
geneNames(gcs)
}
