\name{pplot}
\alias{pplot}
\title{
Plot a color scale layer
}
\description{
Plot the results with a color scale y layer over 3 in 2D
}
\usage{
pplot(z, titre, ppm, res, LT = c(5,10,15,20))
}
\arguments{
  \item{z}{
mQTL's whole results
}
  \item{titre}{
figure title 
}
  \item{ppm}{
chemical shift
}
  \item{res}{
results to be plotted
}
  \item{LT}{
quantil(res,probs), res: results and probs: vector of probabilities
}
}

\value{
2-D profile
}

\author{
Jean-Baptiste Cazier
}

\seealso{
\code{\link{ppersp}}
}

\examples{
\dontrun{

## Plot 3D profile

x11(width=5,height=5,pointsize=5)
titel<-"Example plot"

probs=c(0.95,0.99,0.999,0.9999) ## probabilities

pplot(res,"Full 2D Profile", ppm, best, quantile(res,probs=probs))
}
}

\keyword{ function }

