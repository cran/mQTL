\name{post_mQTL}
\alias{post_mQTL}
\title{
Plot top LOD results
}
\description{
Function to plot the results of a given run
}
\usage{
post_mQTL(results, probs = c(0.95, 0.99, 0.999, 0.9999))
}
\arguments{
  \item{results}{
results of mQTL analysis.
}
  \item{probs}{
numeric vector of probabilities with values in [0,1]. (Values up to 2e-14 outside that range are accepted and moved to the nearby endpoint.).  
}
}
\details{
This function plots differents results corresponding to top LOD marker  
}
\value{
It returns graphs and summaries
}

\author{
Jean-Baptiste Cazier
}

\seealso{
\code{\link{pre_mQTL}}
}

\examples{
  \dontrun{
## Pre-process data 

    infile<-"ReducedData.dat" ## Reduced data by SRV
    cleangen<-"CleanGenoFile.dat" ## Genotype data file in csvs format
    nperm <- 0 ## Number of permutations
    MQTL_results<-process_mQTL(infile, cleangen, nperm))

    post_mQTL(results)## Plot mQTL results

}
}

\keyword{ function }

