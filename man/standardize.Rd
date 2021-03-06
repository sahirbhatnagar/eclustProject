% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{standardize}
\alias{standardize}
\title{Standardize Data}
\usage{
standardize(x, y, center = TRUE, normalize = TRUE)
}
\arguments{
\item{x}{Design matrix of dimension \code{n x q}, where \code{n} is the
number of subjects and q is the total number of variables; each row is an
observation vector. This must include all main effects and interactions as
well, with column names corresponding to the names of the main effects
(e.g. \code{x1, x2, E}) and their interactions (e.g. \code{x1:E, x2:E}).
All columns should be scaled to have mean 0 and variance 1; this is done
internally by the \code{\link{shim}} function.}

\item{y}{response variable (matrix form) of dimension \code{n x 1}}

\item{normalize}{Should \code{x} be scaled to have unit variance. Default is
\code{TRUE}}

\item{intercept}{Should \code{x} and \code{y} be centered. Default is
\code{TRUE}}
}
\value{
list of length 5:
\describe{
  \item{x}{centered and normalized \code{x} matrix}
  \item{y}{centered \code{y} numeric vector}
  \item{bx}{numeric vector of column means of \code{x} matrix}
  \item{by}{mean of \code{y}}
  \item{sx}{standard deviations (using a divisor of \code{n}
  observations) of columns of \code{x} matrix}
}
}
\description{
Function that standardizes the data before running the fitting
  algorithm. This is necessary in all penalization methods so that the effect
  of a given penalty is the same for each predictor. This is used in the
  \code{\link{shim}} function
}
\author{
Sahir Bhatnagar

Maintainer: Sahir Bhatnagar \email{sahir.bhatnagar@mail.mcgill.ca}
}

