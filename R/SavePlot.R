#' Save plot with ggsave
#'
#' Save ggplot - ggsave wrapper. Saves image, GGplot object, and data.
#' @param splot Ggplot object. Defaults to last plot
#' @param plotname String. Defaults 'Plot'.
#' @param ffamily Font family. Defaults to 'Helvetica'
#' @param plotformat String
#' @param plotw Width of plot in centimeters. Defaults to 14
#' @param ploth Height of plot in centimeters. Defaults to 11.5
#' @param plotdir Directory for saving - plot, data and image are saved into subdirectories
#' @param dpi resolution for raster graphics, passed to ggsave
#' @keywords ggplot, themes
#' @export
#' @return NULL
#' @examples
#' saveplot()

saveplot <- function (plotname='Plot', plotformat='eps', ffamily='Helvetica',
                      splot=last_plot() ,ploth=21/2, plotw=14, plotdir='.', dpi=96) {
  try(dev.off(),silent=TRUE)
  plotname2 <- timestampedfilename(plotname)
  plotobjdir <- paste0(plotdir,'./charts-objects/')
  plotimagedir <- paste0(plotdir,'./charts-images/')
  plotdatadir <- paste0(plotdir,'./charts-data/')
  plotimagepath = paste0(plotimagedir,plotname2,'.',plotformat)
  plotobjpath = paste0(plotobjdir,plotname2,'.','ggp')
  plotdatapath = paste0(plotdatadir,plotname2,'.','csv')
  if(plotformat=='pdf') {
    ggsave(plotimagepath, plot=splot, family=ffamily, device=cairo_pdf,
           height=ploth, width=plotw, units='cm')
  } else if(plotformat=='eps') {
    ggsave(plotimagepath, plot=splot, family=ffamily, device=cairo_ps,
           height=ploth, width=plotw, units='cm')
  } else {
    ggsave(plotimagepath, plot=splot, family=ffamily,
           height=ploth, width=plotw, units='cm', dpi=dpi)
  }
  save(splot,file=plotobjpath)
  write.csv(splot$data,file=paste0(plotdatadir,plotname,'_data.csv'))
  splot
}
