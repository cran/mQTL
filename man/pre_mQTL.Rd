\name{pre_mQTL}
\alias{pre_mQTL}
\title{
Statistical Recoupling of variables for mQTL analysis
}
\description{
Makes use of SRV to preprocess metabolomic data for dimensionality reduction by statistical recoupling of variables
}
\usage{
pre_mQTL(infile, outfile, met, corrT = 0.9)
}
\arguments{
  \item{infile}{
metabolomic datafile
}
  \item{outfile}{
reduced metabolomic datafile
}
  \item{met}{
used statistical summary
}
  \item{corrT}{
correlation threshold
}
}
\details{
The SRV algorithm forms clusters of variables using a measure of a local spectral dependency. Then tests whether consecutive clusters are correlated to aggregate them into a single supercluster. 
}
\value{
The algorithm: 
\enumerate{
  \item{variables are associated into a series of clusters.}
  \item{integration of clusters into superclusters.}
}
}

\references{
Blaise,B. et al (2009) Statistical recoupling prior to significance testing in nuclear
magnetic resonance based metabonomics, Anal. Chem., 81(15), 6242-6251.
}
\author{
Jean-Baptiste Cazier and Lyamine Hedjazi
}

\seealso{
\code{\link{SRV}},\code{\link{post_mQTL}}
}

\examples{
  \dontrun{
## Pre-process data 

    infile<-"AlignData.dat" ## Aligned metabolomic profiles in csvs format
    outfile<-"ReducedData.dat" ## Reduced data by SRV
    met<- "rectangle" ## Summary measure (mean, max,...)
    corrT<- 0.9 ## Correlation threshold (default 0.9)
    (pre_mQTL(infile, outfile, met, corrT)
}
}

\keyword{ methods }

