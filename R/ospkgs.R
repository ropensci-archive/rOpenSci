source("/Users/ScottMac/treeBASE/R/treebase.R")
source("/Users/ScottMac/rbhl/R/namesearch.R")
source("/Users/ScottMac/rplos/R/searchplos.R")
source("/Users/ScottMac/rgbif/R/taxoncount.R")

# ospkgs.R

ospkgs <- function(species = NA)
# Args:
#   species: species name (character)
# Examples:
#   ospkgs(species = "Delphinus")
{
  treeBASE_out <- suppressMessages(
    search_treebase(paste('"', species, '"', sep = ""), by="taxon"))
  rplos_out <- searchplos(species, 'everything', 999)
  rgbif_out <- taxoncount(species)
  rbhl_out <- namesearch(species = "poa annua", format = "json")
  outlist <- list(treeBASE = c(length(treeBASE_out), class(treeBASE_out)))
  outlist$rplos <- c(as.numeric(rplos_out[[1]]), "papers")
  outlist$rgbif <- c(rgbif_out, "records")
  outlist$rbhl <- c(length(rbhl_out[,2]), "records")
  df <- ldply(outlist)
  names(df) <- c("Package", "Number", "Datatype")
  return(df)
}




# suppressMessages(search_treebase(paste('"', species, '"', sep = ""), by="taxon"))

