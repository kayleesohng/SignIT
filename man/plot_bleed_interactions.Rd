% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_bleed_interactions.R
\name{plot_bleed_interactions}
\alias{plot_bleed_interactions}
\title{Creates a circular plot with links between signatures that bleed into each other.}
\usage{
plot_bleed_interactions(exposures_mcmc_output, min_bleed = 0.2)
}
\arguments{
\item{exposures_mcmc_output}{Output from get_exposures.}

\item{min_bleed}{Minimum bleed threshold, below which edges are removed.}
}
\value{
A ggplot object with bleed interactions.
}
\description{
Creates a circular plot with links between signatures that bleed into each other.
}
