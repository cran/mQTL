\name{alignSp}
\alias{alignSp}
\title{
Base function for Spectrum Alignment
}
\description{
Alignement of spectrum segement to a spectrum of interest
}
\usage{
alignSp(refSp, refSegments, intSp, intSegments, recursion, MAX_DIST_FACTOR, MIN_RC)
}
\arguments{
  \item{refSp}{
reference spectrum
}
  \item{refSegments}{
refrence segments
}
  \item{intSp}{
spectrum of intrest
}
  \item{intSegments}{
segments of intrest
}
  \item{recursion}{
parameters for recursive alignment
}
  \item{MAX_DIST_FACTOR}{
the distance matching parameter (0.5*peak width)
}
  \item{MIN_RC}{
minimum resamblance coefficient
}
}

\value{
\item{alignedSpectrum}{aligned spectrum}
\item{extendedSegments}{extended segments}
}

\author{
Lyamine Hedjazi

Maintainer: Lyamine Hedjazi <\email{l.hedjazi@fondation-ican.com}>
}

\seealso{
\code{\link{align_mQTL}}
}

\examples{

\dontrun{
## Data

Sp=matrix(rnorm(10*13454,mean=0,sd=1), nrow=10,ncol=13454)

##Segmentation parameters

peakParam=list()
peakParam$ppmDist <- 0.03 #(ppm)  # distance to concatenate adjacent peaks #default 0.03# 
peakParam$ampThr <- 0.3 # amplitude value to threshold small peaks
peakParam$minPeakWidth <- 0.005 # min peak width in ppm scale
peakParam$iFrameLen<-11 # Savitzky-Golay frame length in ppm scale
peakParam$iOrder<-3 # polynomial order of Savitzky - Golay filter
peakParam$peakEdgeMax<-0.2 # maximal peak edge 

##Recusrsion alignment parameters

recursion=list()
recursion$resamblance<-0.95# Stop criterium of the recursion indicating
#the complete alignment of segment peaks
recursion$segShift<-0.02#(ppm)  max peak shift for large peaks
recursion$inbetweenShift<-0.02 #(ppm) max shift for small peaks
recursion$acceptance<-0.5 # if resemblance after the alignment between modified test 
recursion$minSegWidth<-0.01 #(ppm) Stop criteria of the recursion - the size of the smallest peak
recursion$step<-0.02 # Recursion step (default 0.02)

## Normalisation 

normD<-normalise(Sp,'prob')

## Reference spectrum selection
 
index<-selectRefSp(normD$Sp,recursion$step)
refSp<-normD$Sp[index,] # reference spectrum picked-up

##segmentate a reference spectrum

refSegments<- segmentateSp(refSp, peakParam) # segmentate reference spectrum

##segmentate a test spectrum

spectrum<-normD$Sp[10,]
testSegments<- segmentateSp(spectrum, peakParam) # segmentate test spectrum (10th sample)

#match test and reference segments

attachedSegs<-attachSegments(refSegments,testSegments)

refSegments<-attachedSegs$refSegmentsNew
testSegments<-attachedSegs$testSegmentsNew

##matching parameters

MAX_DIST_FACTOR<-0.5 # The distance matching parameter (0.5*peak_width)
MIN_RC<-0.25 # Minimum resamblance coefficient

Segs<-matchSegments(refSp,spectrum, testSegments,refSegments,MAX_DIST_FACTOR,MIN_RC)


#align a test spectrum
 
refSgs<-Segs$refSegs
tstSgs<-Segs$testSegs

SpAlg<- alignSp(refSp,refSgs,spectrum,tstSgs,recursion,MAX_DIST_FACTOR,MIN_RC)
}
}

\keyword{ function }
