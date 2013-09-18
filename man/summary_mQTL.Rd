\name{summary_mQTL}
\alias{summary_mQTL}
\title{
Function to summarize the results of a all the runs and their differences
}
\description{
This function generates a table containing the genetic markers and thier associated metabolomic variables and estimated LOD score.
}
\usage{
summary_mQTL(results, Th = 5)
}
\arguments{
  \item{results}{
mQTL mapping results
}
  \item{Th}{
Threshold of the top accepted LOD  
}
}
\details{
Generates a text file containing a table of results 
}
\value{
returns Summaries
}
\author{
Jean-Baptiste Cazier and Lyamine Hedjazi
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
    
    T=10 ## LOD threshold
    summary_mQTL(results,T=8)## summarizes mQTL results in a table

}
}

\keyword{methods}

