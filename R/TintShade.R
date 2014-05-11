#' Produce tints and shades for a set of colours
#'
#' This function allows you to express your love of cats.
#' @param colors Character vector with hex or RGB spec of each colour
#' @param tints Numeric vector specifying level of each tint, 0-1
#' @param shades Numeric vector specifying level of each shade, 0-1
#' @param hexin Are colours in hex format? Defaults to TRUE.
#' @keywords colours, themes
#' @return Matrix; nrows=number of colours, ncol=number of tints and shades
#' includes the input colours
#' @export
#' @examples
#' cat_function()

TintShade <- function(colors, tints=c(), shades=c(), hexin=TRUE) {
  if(hexin) {
    rgbcols <- col2rgb(colors)
  } else {
    rgbcols <- colors
  }
  rgbout <- matrix(colors,nrow=1)
  if(length(tints)>0) {
    for(i in tints) {
      rgbtint <- rgbcols+(255-rgbcols)*(1-i)
      coltint <- rgb2col(rgbtint)
      rgbout <- rbind(rgbout, coltint)
    }
  }
  if(length(shades)>0) {
    for(i in shades) {
      rgbshade <- rgbcols-(rgbcols)*(1-i)
      colshade <- rgb2col(rgbshade)
      rgbout <- rbind(rgbout, colshade)
    }
  }
  return(t(rgbout))
}
