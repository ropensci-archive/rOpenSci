#' Checks for missing API keys
#'
#'@param key <what param does>
#'@param error_types <what param does>
#'@keywords
#'@seealso
#'@return
#'@alias
#'@export
#'@examples \dontrun{
#'
#'}
ropensci_key<-function(key = NULL)
{
	if(is.null(key)) {
		stop("You need to specify a key to look for", call.=FALSE)
	}
x <- try(getOption(key),silent=T)
if(is.null(x))
	{
		message <- paste("Missing API key for package",key,"\n","?ropensci_key for more information on storing keys")
		stop(message)
	}
	invisible()
}