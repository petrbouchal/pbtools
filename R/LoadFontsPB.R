#' Load fonts independently of platform
#'
#' Load fonts independently of platform
#' @keywords fonts
#' @export

loadfontspb <- function () {
  loadfonts(device='postscript',quiet=TRUE)
  loadfonts(quiet=TRUE)
  if(Sys.info()[['sysname']]=='Darwin') {mysys='mac'} else {mysys='win'}
  if(mysys=='win') {loadfonts(device='win',quiet=TRUE)}
}

