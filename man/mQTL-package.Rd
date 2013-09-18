\name{mQTL-package}
\alias{mQTL-package}
\alias{mQTL}
\docType{package}
\title{
Metabolomic Quantitative Trait Locus mapping
}
\description{
mQTL provides a complete QTL analysis pipeline for 1H NMR data. Distinctive features include normalisation using QPN approach, peak alignment using RSPA approach, dimensionality reduction using SRV approach and finally QTL mapping using R/qtl package.
}
\details{
\tabular{ll}{
Package: \tab mQTL\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-09-18\cr
License: \tab GPL (>= 3)\cr
}
Main fucntions:
\itemize{
\item \code{format_mQTL}: creates the proper format of data
\item \code{align_mQTL}: peak alignment and normalisation
\item \code{pre_mQTL}: dimension reduction by statistical recoupling of variables
\item \code{process_mQTL}: computes LODs using extended Haley-Knott method 
\item \code{post_mQTL}: plots the results of a given run
\item \code{summary_mQTL}: provides the results as a table
}
}

\author{
Lyamine Hedjazi and Jean-Baptiste Cazier

Maintainer: Lyamine Hedjazi  <\email{l.hedjazi@fondation-ican.com}>
}


