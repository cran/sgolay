% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sgolayfilt.R
\name{sgolayfilt}
\alias{sgolayfilt}
\title{Apply a Savitzky-Golay smoothing filter}
\usage{
sgolayfilt(
  x,
  p = 3,
  n = p + 3 - p\%\%2,
  m = 0,
  ts = 1,
  rowwise = FALSE,
  engine = c("auto", "fft", "filter")
)
}
\arguments{
\item{x}{A numeric matrix or vector}

\item{p}{ filter order. }

\item{n}{ filter length (must be odd). }

\item{m}{ return the m-th derivative of the filter coefficients.}

\item{ts}{ time scaling factor. }

\item{rowwise}{If \code{TRUE}, Apply the filter by rows instead of by columns}

\item{engine}{How is the filter applied. This parameter impacts the performance, but not the results.
"auto" will select automatically an efficient engine. \code{"fft"} uses a Fast
Fourier Transform to apply the filter. \code{"filter"} uses a convolution in the
direct space. \code{"fft"} is more efficient on larger filter lengths.}
}
\value{
A matrix or vector of the same dimensions or length as \code{x}, with the result of the filter
}
\description{
Smooth data or compute its derivatives with a Savitzky-Golay smoothing filter.
}
\examples{
x <- runif(300)
y <- sgolayfilt(x, p=2, n = 21)
}
