#'
#' List all data sources currently served through ropensci
#' @param  none
#' @examples \dontrun{
#' rosources()
#' }
ros_sources <- function(sources='data/rosources.rda')
{
load(sources)	
return(rosources)	
}

