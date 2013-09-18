\name{ppersp}
\alias{ppersp}
\title{
Plot a 3-D profile of LODs
}
\description{
Plot 3-D profile of LODs as function of genomic position and chemical shift   
}
\usage{
ppersp(z, ppm, titre, theta=-15, phi=15, r=50)
}
\arguments{
  \item{z}{
table of results
}
  \item{ppm}{
chemical shift
}
  \item{titre}{
title
}
  \item{theta}{
angle defining the viewing direction (azimuthal direction)
}

  \item{phi}{
angle defining the viewing direction (colatitude direction)
}
  \item{r}{
the distance of the eyepoint from the centre of the plotting box.
}

}
\value{
plot 2D-profile
}
\author{
Jean-Baptiste Cazier
}

\seealso{
\code{\link{pplot}}
}

\examples{

## Plot 3D profile

\dontrun{
x11(width=5,height=5,pointsize=5)
titel<-"Example plot"
ppersp(results, ppm, title)
}
}

\keyword{ function }

