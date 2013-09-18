\name{segmentateSp}
\alias{segmentateSp}
\title{
Segmentation of a spectrum of interest
}
\description{
Determination of highly intensive peaks in the spectrum of interest and 
subsequent concatenation of closely located peaks into 
larger segments
}
\usage{
segmentateSp(Sp, peakParam)
}
\arguments{
  \item{Sp}{
spectrum
}
  \item{peakParam}{
a list:
\itemize{
  \item{ampThr: amplitude threshold   [default 2*median(peaksMaxValues)] }
  \item{iFrameLen: Savitzky-Golay frame length }
  \item{iOrder: polynomial order of Savitzky - Golay filter}
  \item{iFrameLen: Savitzky-Golay frame length }
  \item{minPeakWidth: min peak size}
  \item{ppmDist: distance to concatenate adjacent peaks}
}
}
}

\value{
A list:
\item{testSegmentsNew}{new test segments}
\item{refSegmentsNew}{new reference segments}
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
\code{\link{attachSegments}}, \code{\link{matchSegments}}
}

\examples{

# Data

Sp=matrix(rnorm(10*13454,mean=0,sd=1), nrow=10,ncol=13454)

##Segmentation parameters

peakParam=list()
peakParam$ppmDist <- 0.03# (ppm)  # distance to concatenate adjacent peaks #default 0.03# 
peakParam$ampThr <- 0.3 # amplitude value to threshold small peaks # 
peakParam$minPeakWidth <- 0.005 #min peak width in ppm scale
peakParam$iFrameLen<-11 #Savitzky-Golay frame length in ppm scale
peakParam$iOrder<-3 #polynomial order of Savitzky - Golay filter
peakParam$peakEdgeMax<-0.2 

#segmentate a test spectrum (10th sample)

Spectr<-Sp[10,]
testSegments<- segmentateSp(Spectr, peakParam) 
}

\keyword{ methods }
