#' Connect to Access DB using RODBC, for 64bit windows
#'
#' Connect to Access DB using RODBC, for 64bit windows
#' @param dbpath path to database
#' @keywords RODBC, odbc, database, Access, 64bit
#' @export
#' @return connection
#' @examples
#' connectAccess('A:/database.accdb')

connectAccess64 <- function (dbpath) {
  require(RODBC)
  connectstring <- paste0("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=",
                          dbpath)
  conn  <- odbcDriverConnect(connectstring)
}
