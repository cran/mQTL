\name{format_mQTL}
\alias{format_mQTL}
\title{
Routine to reformat the data into the required format
}
\description{
This function enables to reformat data into the proper format. The user should provides in input metabolomic dataset, Genotype dataset and a dataset containing sex and pgm (parental grandmother). 
}
\usage{
format_mQTL(datafile, genofile, physdat, outdat, outgeno)
}

\arguments{
  \item{datafile}{
   metabolomic data file
}
  \item{genofile}{
  genotype data file
}
  \item{physdat}{
   a file containing sex and pgm 
}
  \item{outdat}{
   phenotype data (metabolomic data + sex + pgm) in the format csvs
}
  \item{outgeno}{
   genotype data
}
}

\value{
It returns phynotype and genotype files in the proper format
}

\author{
Lyamine Hedjazi
}

\seealso{
\code{\link{align_mQTL}},
}

\examples{
  \dontrun{
## Clean the raw data to match the genotype and phenotype and create the proper format

  rawfile<-"MetaboFile.dat" ## Metabolomic data file
  genofile<-"GenoFile.dat" ## Genotype data file
  physiodat="physiodat.dat" ## data file containing sex and pgm 
  cleandat<-"CleanMetaboFile.dat" ## Metabolomic data file in csvs format
  cleangen<-"CleanGenoFile.dat" ## Genotype data file in csvs format

  format_mQTL(rawfile,genofile,physiodat, cleandat,cleangen)
}
}

\keyword{ function }

