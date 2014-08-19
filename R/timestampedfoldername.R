#' Folder name with timestamp
#'
#' Create folder with name including current time and return the folder path.
#' @param folder Folder. String. Defaults to 'folder'.
#' @param format Date-time format. String. Defaults to '%Y%m%d_%H%M%S'
#' @keywords date, time, file, save
#' @export
#' @return String
#' @examples
#' timestampedfolder()

timestampedfolder <- function(folder='folder', path='./', format='%Y%m%d_%H%M%S') {
  timestamp <- format(Sys.time(), format)
  folderfull <- paste0(path,folder, '_', timestamp)
  dir.create(folderfull, showWarnings = FALSE)
  return(folderfull)
}
