\name{matchSegments}
\alias{matchSegments}
\title{
Matching of the segment of interest to the corresponding reference 
}
\description{
The algorithm makes use of a fuzzy logic approach to match the segment of interest to the corresponding reference
}
\usage{
matchSegments(refSp, intSp, intSegments, refSegments, MAX_DIST_FACTOR, MIN_RC)
}
\arguments{
  \item{refSp}{
spectrum of reference
}
  \item{intSp}{
spetcrum of interest (test spectrum)
}
  \item{intSegments}{
segments of spectrum of interest
}
  \item{refSegments}{
segments of reference spectrum
}
  \item{MAX_DIST_FACTOR}{
the distance matching parameter (0.5*peak_width)
}
  \item{MIN_RC}{
minimum resamblance coefficient
}
}

\details{
Algorithm:
\enumerate{
\item{take segment of interest}
\item{take reference segments}
\item{calculate relative distance between them}
\item{calculate relative resamblance between them}
\item{find min value of relative distance and resamblance}
\item{use it as representative of similiarity between target and reference segments}
\item{find the segment that has the highest value of both relative distance and resamblance}
}
}

\value{
A list:
\item{testSegs}{matched test segments}
\item{refSegs}{matched reference segments}
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
\code{\link{attachSegments}}
}

\examples{

\dontrun{

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

##reference spectrum selection

step=0.02 # Recursion step (default 0.02)
index<-selectRefSp(Sp,step)
refSp<-Sp[index,]

#segmentate a reference spectrum

refSegments<- segmentateSp(refSp, peakParam) # segmentate reference spectrum

#segmentate a test spectrum

spectrum<-Sp[10,]
testSegments<- segmentateSp(spectrum, peakParam) # segmentate test spectrum (10th sample)

#attach test and reference segments
attachedSegs<-attachSegments(refSegments,testSegments)

##Matching parameters

MAX_DIST_FACTOR<-0.5 # The distance matching parameter (0.5*peak_width)
MIN_RC<-0.25 # Minimum resamblance coefficient

refSegments<-attachedSegs$refSegmentsNew
testSegments<-attachedSegs$testSegmentsNew
Segs<-matchSegments(refSp,spectrum, testSegments,refSegments,MAX_DIST_FACTOR, MIN_RC)
}
}

\keyword{function}
