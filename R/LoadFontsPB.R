#' Load fonts independently of platform
#'
#' This function allows you to express your love of cats.
#' @keywords cats
#' @export

LoadFontsPB <- function () {
  loadfonts(device='postscript',quiet=TRUE)
  loadfonts(quiet=TRUE)
  if(Sys.info()[['sysname']]=='Darwin') {mysys='mac'} else {mysys='win'}
  if(mysys=='win') {loadfonts(device='win',quiet=TRUE)}
}

