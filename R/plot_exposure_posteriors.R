#' Plot the signature exposure posterior distributions
#' 
#' Visualizes the posterior distributions of the MCMC solution to signature exposures.
#' By default, they are visualized as violin plots.
#'
#' @param exposures_mcmc_output     Output from get_exposures.
#' @param view                      Can be either "violin" or "boxplot".
#'
#' @return A ggplot plot of the posterior distributions.
#'
#' @import ggplot
#' @import dplyr
#'
#' @export

plot_exposure_posteriors <- function(exposures_mcmc_output, view = 'violin') {
  plot <- exposures_mcmc_output$exposure_chain %>%
    mutate(signature = trim_signature_names(signature)) %>%
    ggplot(aes(
      x = signature %>% as.factor,
      y = exposure
    )) +
    labs(x = 'Signature', y = 'Exposure') +
    rotate_x_axis_labels()
    
  
  if (view == 'boxplot') {
    return(plot + geom_boxplot())
  } else {
    return(plot + geom_violin())
  }
}

