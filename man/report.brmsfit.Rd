% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.brmsfit.R
\name{report.brmsfit}
\alias{report.brmsfit}
\title{Reporting Bayesian Models from brms}
\usage{
\method{report}{brmsfit}(x, ...)
}
\arguments{
\item{x}{Object of class \code{lm} or \code{glm}.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
An object of class \code{\link{report}}.
}
\description{
Create reports for Bayesian models. The description of the parameters
follows the Sequential Effect eXistence and sIgnificance Testing framework
(see \link[bayestestR:sexit]{SEXIT documentation}).
}
\examples{
library(report)

# Bayesian models
\dontrun{
if (require("brms")) {
  model <- brm(mpg ~ qsec + wt, data = mtcars, refresh = 0, iter = 300)
  r <- report(model)
  r
  summary(r)
  as.data.frame(r)
  summary(as.data.frame(r))
}
}
}
\seealso{
Specific components of reports (especially for stats models):
\itemize{
  \item \code{\link{report_table}}
  \item \code{\link{report_parameters}}
  \item \code{\link{report_statistics}}
  \item \code{\link{report_effectsize}}
  \item \code{\link{report_model}}
  \item \code{\link{report_priors}}
  \item \code{\link{report_random}}
  \item \code{\link{report_performance}}
  \item \code{\link{report_info}}
  \item \code{\link{report_text}}
}
Other types of reports:
\itemize{
  \item \code{\link{report_system}}
  \item \code{\link{report_packages}}
  \item \code{\link{report_participants}}
  \item \code{\link{report_sample}}
  \item \code{\link{report_date}}
}
Methods:
\itemize{
  \item \code{\link{as.report}}
}
Template file for supporting new models:
\itemize{
  \item \code{\link{report.default}}
}
}
