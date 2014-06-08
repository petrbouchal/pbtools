#' Return the name of the current platform
#'
#' Returns the name of the current platform
#' @export
#' @examples
#' whatplatform()

WhatPlatform <- function () {
  if(Sys.info()[['sysname']]=='Darwin') {mysys='mac'} else {mysys='win'}
  if(mysys=='win') {loadfonts(device='win',quiet=TRUE)}
  return(mysys)
}
