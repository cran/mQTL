\name{attachSegments}
\alias{attachSegments}
\title{
Concatenation of test and reference segments
}
\description{
Concatenation of test and reference segments to ensure one-to-one
correspondence. 
}
\usage{
attachSegments(refSegments,testSegments)
}

\arguments{
  \item{refSegments}{
  segments of the reference spectrum
}
  \item{testSegments}{
  segments of the test spectrum
} 
}

\details{
The algorithm:
\enumerate{
\item{For each reference segment within segment boundaries, i.e. between
      initial and final positions, find all centre (middle) positions of test segments 
      and merge those segments, if more than one centre position is found}
\item{Apply the same procedure for each test segment}
}
}

\value{
A list:
\item{segments$start}{start of each concatenated test segment}
\item{segments$PeakLeftBoundary}{peak left boundary of each concatenated test segment}
\item{segments$PeakRightBoundary}{peak right boundary of each concatenated test segment}
\item{segments$Peaks}{peaks of each concatenated test segment}
\item{segments$end}{end of each concatenated test segment}
\item{segments$end}{center of each concatenated test segment}
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
\code{\link{matchSegments}}
}


\examples{

\dontrun{

## Data

Sp=matrix(rnorm(10*13454,mean=0,sd=1), nrow=10,ncol=13454)

##Segmentation parameters

peakParam=list()
peakParam$ppmDist <- 0.03# (ppm)  # distance to concatenate adjacent peaks #default 0.03# 
peakParam$ampThr <- 0.3 # amplitude value to threshold small peaks # 
peakParam$minPeakWidth <- 0.005 #min peak width in ppm scale
peakParam$iFrameLen<-11 #Savitzky-Golay frame length in ppm scale
peakParam$iOrder<-3 #polynomial order of Savitzky - Golay filter
peakParam$peakEdgeMax<-0.2 

##Reference spectrum selection

step<-0.02 # Recursion step (default 0.02)
index<-selectRefSp(Sp,step)
refSp<-Sp[index,]

#segmentate a reference spectrum

refSegments<- segmentateSp(refSp, peakParam) # segmentate reference spectrum

#segmentate a test spectrum

spectrum<-Sp[10,]
testSegments<- segmentateSp(spectrum, peakParam) # segmentate test spectrum (10th sample)

# match test and reference segments

attachedSegs<-attachSegments(refSegments,testSegments)

}
}

\keyword{function}

