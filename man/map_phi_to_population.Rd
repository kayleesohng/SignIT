% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_population_signatures.R
\name{map_phi_to_population}
\alias{map_phi_to_population}
\title{Population Index Mapper}
\usage{
map_phi_to_population(phi_index, signature_names, n_populations)
}
\arguments{
\item{phi_index}{Parameter index in output from \code{\link{get_population_signatures}}.}

\item{signature_names}{Vector of mutation signature names in order of appearance in reference signatures.}

\item{n_populations}{Number of populations which the model was run with}
}
\value{
Vector of population names corresponding to parameter indices.
}
\description{
Maps parameter values to their respective populations
}
