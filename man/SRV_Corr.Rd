\name{SRV_Corr}
\alias{SRV_Corr}
\title{
Statistical recoupling of variables in a supervised context
}
\description{
Correlation generation for Statistical Recoupling of Variables.
}
\usage{
SRV_Corr(X, Y, minsize, correl)
}
\arguments{
  \item{X}{
data matrix
}
  \item{Y}{
class matrix
}
  \item{minsize}{
bucketting resolution
}
  \item{correl}{
correlation threshold
}
}
\value{
A list:
\item{Pfinal }{pvalue vector}
\item{indicesdebf}{starting border of cluster}
\item{indicesfinfl }{ending border of cluster}
\item{Correlation}{Correlation of superclusters/clusters}
}
\references{
Blaise,B. et al (2009) Statistical recoupling prior to significance testing in nuclear
magnetic resonance based metabonomics, Anal. Chem., 81(15), 6242-6251.
}
\author{
Jean-Baptiste Cazier
}
\seealso{
\code{\link{SRV}}, \code{\link{pre_mQTL}}
}
\keyword{ methods }

