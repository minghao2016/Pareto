% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{PiecewisePareto_ML_Estimator_Alpha}
\alias{PiecewisePareto_ML_Estimator_Alpha}
\title{Maximum Likelihood Estimation of the Alphas of the Piecewise Pareto Distribution}
\usage{
PiecewisePareto_ML_Estimator_Alpha(
  losses,
  t,
  truncation = NULL,
  truncation_type = "lp",
  tol = 1e-07,
  max_iterations = 1000
)
}
\arguments{
\item{losses}{Numeric vector. Losses that are used for the ML estimation.}

\item{t}{Numeric vector. Thresholds of the piecewise Pareto distribution.}

\item{truncation}{Numeric. If \code{truncation} is not \code{NULL} and \code{truncation > max(t)}, then the distribution is truncated at \code{truncation}.}

\item{truncation_type}{Character. If \code{truncation_type = "wd"} then the whole distribution is truncated. If \code{truncation_type = "lp"} then a truncated Pareto is used for the last piece.}

\item{tol}{Numeric. Desired accuracy (only relevant in the truncated case).}

\item{max_iterations}{Numeric. Maximum number of iteration in the case \code{truncation < Inf}  (only relevant in the truncated case).}
}
\value{
Maximum likelihood estimator for the parameter \code{alpha} of a Pareto distribution with threshold \code{t} given the observations \code{losses}
}
\description{
Calculates the maximum likelihood estimator of the parameter vector alpha of a piecewise Pareto distribution
}
\examples{
losses <- rPiecewisePareto(10000, t = c(100,200,300), alpha = c(1,2,3))
PiecewisePareto_ML_Estimator_Alpha(losses, c(100,200,300))
losses <- rPiecewisePareto(10000, t = c(100,200,300), alpha = c(1,2,3),
                           truncation = 500, truncation_type = "lp")
PiecewisePareto_ML_Estimator_Alpha(losses, c(100,200,300))
PiecewisePareto_ML_Estimator_Alpha(losses, c(100,200,300),
                                   truncation = 500, truncation_type = "lp")
losses <- rPiecewisePareto(10000, t = c(100,200,300), alpha = c(1,2,3),
                           truncation = 500, truncation_type = "wd")
PiecewisePareto_ML_Estimator_Alpha(losses, c(100,200,300))
PiecewisePareto_ML_Estimator_Alpha(losses, c(100,200,300),
                                   truncation = 500, truncation_type = "wd")

}
