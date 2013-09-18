\name{SRV}
\alias{SRV}
\title{
Statistical Recoupling of Variables
}
\description{
Base function for dimensionality reduction by statistical recoupling of variables
}
\usage{
SRV(X, minsize, correl, clustf = median)
}
\arguments{
  \item{X}{
data matrix
}
  \item{minsize}{
singlet size
}
  \item{correl}{
bucketting resolution
}
  \item{clustf}{
correlation threshold
}
}

\value{
A list:
\item{indicesdebf}{starting border of superclusters}
\item{indicesfinf}{ending border of superclusters}
}
\references{
Blaise,B. et al (2009) Statistical recoupling prior to significance testing in nuclear
magnetic resonance based metabonomics, Anal. Chem., 81(15), 6242-6251.
}
\author{
Jean-Baptiste Cazier
}
\seealso{
\code{\link{pre_mQTL}}
}
\examples{

\dontrun{

## Statistical recoupling of variables

    corrT=0.9 # correlation threshold
    minsize=10 # singlet size
    met="rectangle" # summary measure

#Perform the SRV analysis to reduce the number of dimension of Spectra data (Sp)

    SRV<-SRV(Sp, minsize, corrT,clustf=met)

}
}

\keyword{ methods }
