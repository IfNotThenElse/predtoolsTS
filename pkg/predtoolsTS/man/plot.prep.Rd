% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prep.R
\name{plot.prep}
\alias{plot.prep}
\title{Generic function}
\usage{
\method{plot}{prep}(x, ylab = "Preprocessed time serie", xlab = "", ...)
}
\arguments{
\item{x}{\code{prep} object}

\item{ylab}{ylab}

\item{xlab}{xlab}

\item{...}{ignored}
}
\description{
Plots object prep
}
\examples{
plot(prep(AirPassengers),ylab="Stationary AisPassengers")
}
