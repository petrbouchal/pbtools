knit2byrokrates <- function (filename, title=paste('R blog',format(Sys.time(), "%d/%m/%Y %H:%M")),
                                              publish=F, preview=T) {
  if (!require('RWordPress'))
    install.packages('RWordPress', repos = 'http://www.omegahat.org/R', type = 'source')
  library(RWordPress)
  password <- readline("enter password: ")
  print(password)
  options(WordpressLogin = c(admin=password),
          WordpressURL = 'http://byrokrates.cz/xmlrpc.php')
#   opts_knit$set(base.url = 'http://dl.dropboxusercontent.com/u/1998974/wp/',
#                 base.dir = '~/Dropbox/Public/wp/')
  library(knitr)
  wordpress.url = function(file) {
    require(RWordPress)
    uploadFile(file)$url
  }
  opts_knit$set(upload.fun=wordpress.url)
  result <- knit2wp(filename, title = title, publish = publish)
  print(result)
  previewurl <- paste0('http://byrokrates.cz?p=',result[1],'&preview=true')
  if(preview) {browseURL(previewurl)}
}

knit2byrokrates('yourfile.Rmd')
