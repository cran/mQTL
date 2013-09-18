\name{normalise}
\alias{normalise}
\title{
Normalisation of metabolomic data
}
\description{
Removing dilutions between biofluid samples (normalisation of spectra)
}
\usage{
normalise(X, method)
}
\arguments{
  \item{X}{
metabolomic data
}
  \item{method}{
total area (method<-"total") or quotient probabilistic method (method<-"prob")

}
}
\value{
normalised spectrum
}
\references{
Dieterle,F., et al (2006) Probabilistic Quotient Normalization as Robust Method to
Account for Dilution of Complex Biological Mixtures. Application in 1H NMR
Metabonomics, Anal. Chem., 78(13), 42814290.
}
\author{
Lyamine Hedjazi
}
\seealso{
\code{\link{SRV}}
}

\examples{

## Data
Sp=matrix(rnorm(10*13454,mean=0,sd=1), nrow=10,ncol=13454)

## Quotient probabilistic normalisation
NormDat<-normalise(abs(Sp),'prob')

}

\keyword{ methods }
