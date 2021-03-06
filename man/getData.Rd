% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getData.R
\name{getData}
\alias{getData}
\title{Download and Format Data Set from LIBSVM Homepage}
\usage{
getData(name, type = c("all", "training", "testing", "validating"),
  scaled = FALSE)
}
\arguments{
\item{name}{name of dataset}

\item{type}{type of data set}

\item{scaled}{wheter the dataset was scaled (or more precisely that it
was named as such on the LIBSVM webpage)}
}
\value{
If there are several types of datasets (training, test, etc),
a list of datasets named as such will be returned. Otherwise,
a single list with components \code{x} and \code{y} for the
feature matrix and response respectively.
}
\description{
Download and Format Data Set from LIBSVM Homepage
}
\examples{
\dontrun{
  satimage <- libsvmdata::getData("satimage",
                                  "training",
                                  scaled = TRUE)
}
}
