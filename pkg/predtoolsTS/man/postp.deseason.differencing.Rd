% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/postp.R
\name{postp.deseason.differencing}
\alias{postp.deseason.differencing}
\title{Undo deseason(differencing)}
\usage{
postp.deseason.differencing(tserie, nsd, firstseasons, frequency)
}
\arguments{
\item{tserie}{A \code{ts} object.}

\item{nsd}{Number of seasonal differences.}

\item{firstseasons}{Values lost on the original differences}

\item{frequency}{Frequency of the original time serie}
}
\value{
A \code{ts} object.
}
\description{
Uses inverse seasonal differences to reverse the changes
}
\examples{
p <- prep.deseason.differencing(AirPassengers)
postp.deseason.differencing(p$tserie,p$nsd,p$firstseasons,frequency(AirPassengers))
}
\author{
Alberto Vico Moreno
}
