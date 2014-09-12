#' Rename multiple variables in a df
#'
#' Rename multiple df variables based on two lists of values. If a name contained
#' in names(dataset) is not found in renamelist[1], it is left as is.
#' @param dataset Data set whose column names are to be changed
#' @param renamelist List of two vectors of same lenght, or df with two columns
#' @param csv with two columns
#' @keywords data.frame, rename, variables, names
#' @export
#' @examples
#' renamevars(dataframe, renamelist = list(c('oldname'),c('newname'))
#' renamevars(dataframe, renamelistfile = './tableofnames.csv')

renamevars <- function(dataset,renamelist,renamelistfile) {
  if(!missing(renamelistfile) & !missing(renamelist)) {
    stop('Both file and object supplied as renaming list. Only supply one.')
  }
  if(!missing(renamelistfile)) {
    renamelist <- read.csv(renamelistfile, stringsAsFactors=FALSE)
  }
  renamelist <- as.data.frame(renamelist, stringsAsFactors=FALSE)
  for (i in names(dataset)) {
    if(i %in% renamelist[,1]) {
      names(dataset)[names(dataset)==i] <- renamelist[renamelist[1]==i,2]
    }
  }
  return(dataset)
}
