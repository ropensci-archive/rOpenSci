

#'Package to list current ropensci sources 
#'
#'@param sources Reads data stored in data folder
#'@param  verbose = TRUE Default is complete listing
#'@keywords
#'@seealso
#'@return
#'@alias
#'@export
#'@examples \dontrun{
#'
#'}
ros_sources <- function(sources='data/rosources.rda', verbose = TRUE, working = NULL) {
load(sources)	
if(!is.null(working)) {
	sources = subset(sources, working == TRUE)
}
return(rosources)	
}

# Generating package data
# data_source = c("Dryad", "Mendeley", "PLOS")
# package_name = c("rDryad", "RMendeley", "rPLOS")
# working = c(TRUE, TRUE, TRUE)
# sources=data.frame(data_source, package_name, working)
# save(sources, file="../data/rosources.rda")
