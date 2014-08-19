#' File name with timestamp
#'
#' Return string file name including current time.
#' @param filename. String. Defaults to 'file'.
#' @param extension String. Defaults 'txt'.
#' @param folder Folder. String. Defaults to ''.
#' @param format Date-time format. String. Defaults to '%Y%m%d_%H%M%S'
#' @keywords date, time, file, save
#' @export
#' @return String
#' @examples
#' timestampedfilename()

timestampedfilename <- function(filename='file',extension='',
                                folder='', format='%Y%m%d_%H%M%S') {
  timestamp <- format(Sys.time(), format)
  paste0(folder, filename, '_', timestamp,
         if(extension!='') {'.'} else {''}, extension)
}

