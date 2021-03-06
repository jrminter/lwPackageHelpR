% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_new_github.R
\name{install_new_github}
\alias{install_new_github}
\title{Install new packages from github}
\usage{
install_new_github(pkg, repo, libPath)
}
\arguments{
\item{pkg}{String. Package name. Ex: 'rPeaks'}

\item{repo}{String. Repository name. Ex: 'jrminter'}

\item{libPath}{String Ex:.libPaths()[1]}
}
\description{
Install new packages from github
}
\examples{
library(lwPackageHelperR)
install_new_github( 'rPeaks', 'jrminter', .libPaths()[1])
}
