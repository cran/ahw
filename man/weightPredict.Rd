% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weightPredict.R
\name{weightPredict}
\alias{weightPredict}
\title{Continuous time weight estimation based on
\code{\link[timereg]{predict.aalen}}}
\usage{
weightPredict(fPred, cfPred, wtFrame, ids, eventTimes, eventIds, b)
}
\arguments{
\item{fPred}{\code{\link[timereg]{predict.aalen}} object of the factual fit}

\item{cfPred}{\code{\link[timereg]{predict.aalen}} object of the
counterfactual fit}

\item{wtFrame}{\code{\link{data.frame}} or \code{\link{data.table}} for the
at risk individuals}

\item{ids}{All individuals in the data set}

\item{eventTimes}{Observed event times}

\item{eventIds}{Individuals that experience the event}

\item{b}{Smoothing parameter}
}
\value{
data.table
}
\description{
Extracts cumulative hazard estimates for each individual. Each
individual receives a weight process evaluated at pre-specified time points.
The weight process is estimated as a cumulative product involving estimated
cumulative hazard increments, and a hazard ratio estimated using a smoothing
parameter \code{b}.
}
\author{
Pål Christie Ryalen <p.c.ryalen@medisin.uio.no>
}
