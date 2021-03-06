% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modl.R
\name{modl}
\alias{modl}
\title{Building predictive models}
\usage{
modl(tserie, method = "arima", algorithm = NULL, formula = NULL,
  initialWindow = NULL, horizon = NULL, fixedWindow = NULL)
}
\arguments{
\item{tserie}{A ts or prep object.}

\item{method}{A string. Current methods available are "arima" and "dataMining". Method "arima" is set as default.}

\item{algorithm}{A string. In case \code{method} is "dataMining", pick the algorithm you want to use. There is a complete list of available algorithms here (only regression type allowed): \url{http://topepo.github.io/caret/train-models-by-tag.html}.}

\item{formula}{An integer vector. Contains the indexes from the time series wich will indicate how to extract the features. The last value will be the class index. Default value: c(1:16)}

\item{initialWindow}{An integer. The initial number of consecutive values in each training set sample. Default value: 30.}

\item{horizon}{An integer. The number of consecutive values in test set sample. Default value: 15.}

\item{fixedWindow}{A logical: if FALSE, the training set always start at the first sample and the training set size will vary over data splits. Default value: TRUE.}
}
\value{
A list is returned of class \code{modl} containing:
\item{tserie}{Original time serie.}
\item{tserieDF}{Time serie converted to data frame.}
\item{method}{Method used to build the model.}
\item{algorithm}{If method is data mining, indicates wich algorithm was used.}
\item{horizon}{Horizon for the splitting.}
\item{model}{Model result from \code{caret}. It is a list, result of the \code{caret::train} function.}
\item{errors}{Contains three different metrics to evaluate the model.}
}
\description{
This function give us the tools to build predictive models for time series.
}
\details{
Returns an object \code{modl} which stores all the information related to
the final chosen model (errors, parameters, model).

Currently this function covers two different methods: the widely know ARIMA
and the "not so used for prediction" data mining. For the data mining we make
use of the \code{caret} package.

The \code{caret} package offers plenty of data mining algorithms.
For the data splitting here we use a rolling forecasting origin technique, wich
works better on time series.
}
\examples{
p <- prep(AirPassengers)
modl(p,method='arima')
\donttest{modl(p,method='dataMining',algorithm='rpart')}
}
\references{
\url{http://topepo.github.io/caret/index.html}
}
\seealso{
{
\code{\link{prep}}
\code{\link{modl.arima}},
\code{\link{modl.tsToDataFrame}},
\code{\link{modl.trControl}},
\code{\link{modl.dataMining}}
}
}
\author{
Alberto Vico Moreno
}
