#' Load custom theme
#'
#' Create hex value of colour based on RGB value
#' @param rgb Vector with \% RGB values
#' @keywords ggplot, themes
#' @export
#' @return string
#' @examples
#' rgb(1,1,1) # returns #FFFFFF

rgb2col <- function(rgb) {
  rgb <- as.integer(rgb)
  class(rgb) <- "hexmode"
  rgb <- as.character(rgb)
  rgb <- matrix(rgb, nrow=3)
  paste("#", apply(rgb, MARGIN=2, FUN=paste, collapse=""), sep="")
}
