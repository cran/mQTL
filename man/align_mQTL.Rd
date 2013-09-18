\name{align_mQTL}
\alias{align_mQTL}
\title{
Peak alignement and normalisation of metabolomic data
}
\description{
Recursive Segment-Wise Peak Alignment (RSPA) for accounting peak position
variation across metabolomic data
}
\usage{
align_mQTL(datafile, outdat)
}
\arguments{
  \item{datafile}{ 
  raw spectra
}
  \item{outdat}{
  aligned spectra
}
}
\details{
The algorithm is based on the following workflow:
\enumerate{
  \item{Quotient probabilistic normalisation of metabolomic data.}
  \item{Automatic selection of a reference spectrum.}
  \item{Segmentate a reference spectrum.}
  \item{Then for each test spectrum:
    \itemize{
      \item{segmentate a test spectrum.}
      \item{match test and reference segments.}
      \item{align a test spectrum.}
    }
  }
}
}

\value{
It returns aligned data. 
}
\references{
Veselkov,K. et al (2009) Recursive Segment-Wise Peak Alignment of Biological 1H
NMR Spectra for Improved Metabolic Biomarker Recovery, Anal. Chem., 81(1),
56-66.
}
\author{
Lyamine Hedjazi
}

\seealso{
 \code{\link{alignSp}}, \code{\link{attachSegments}}, \code{\link{matchSegments}}, \code{\link{segmentateSp}},\code{\link{format_mQTL}}, \code{\link{format_mQTL}} 
}

\examples{
  \dontrun{
## Align metabolomic data profiles

  cleandat<-"CleanMetaboFile.dat" ## Metabolomic data file in csvs format
  aligdat<-"AlignData.dat" ## Aligned metabolomic profiles in csvs format

  align_mQTL(cleandat,aligdat)
}
}
\keyword{methods}

