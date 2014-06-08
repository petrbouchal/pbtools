#' Load custom theme
#'
#' Create custom ggplot theme based on a set of colours and a font family
#' @param mycols A vector of colours in hex (HTML) format. Defaults to ugly.
#' @param fontfamily Font family. Defaults to 'Helvetica'
#' @param tint Vector of 0-1 value for shades to embed in theme. Defaults to .75,.5,.25
#' @param shade Vector of 0-1 values for shades to embed in theme. Defaults to NULL
#' @keywords ggplot, themes
#' @export
#' @return TRUE
#' @examples
#' loadcustomthemes()

loadcustomthemes <- function (mycols=themecolours, fontfamily='Helvetica',
                              tints=c(.75,0.5,.25), shades=NULL) {

  themecols <- TintShade(mycols,c(.75,0.5,.25),shades,hexin=TRUE)

  theme_PB <- theme_few()+
    theme(text = element_text(family=fontfamily,size=10),
          axis.text = element_text(colour=themecols[5,1],hjust=.5,vjust=.5),
          axis.text.x = element_text(angle = 0),
          #axis.text.y= element_text(vjust=0,hjust=1),
          axis.title=element_text(colour=themecols[5,1]),
          axis.ticks=element_blank(),
          axis.title=element_text(),
          axis.line=element_blank(),
          legend.title=element_blank(),
          #legend.position=c(.5,-0.17),
          legend.position='bottom',
          legend.box='horizontal',
          legend.direction='horizontal',
          legend.key=element_rect(colour=NA),
          legend.key.width=unit(.5,'cm'),
          legend.key.height=unit(.3,'cm'),
          legend.text = element_text(vjust=.5),
          legend.background=element_blank(),
          panel.margin=unit(c(2.5,2.5,1,1),'mm'),
          panel.border=element_blank(),
          panel.background=element_blank(),
          plot.background=element_rect(fill=NA,colour=NA),
          plot.margin=unit(c(.25,.25,0,0),'cm'),
          strip.background=element_rect(fill=NA,colour=NA),
          plot.title=element_text(size=10,face='bold'),
          panel.grid=element_line(colour=themecols[5,3]),
          panel.grid.minor=element_blank(),
          panel.grid.major.x=element_blank(),
          axis.ticks.length=unit(.12,'cm'),
          axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          plot.title=element_blank())

  theme_set(theme_PB)
  return(NULL)
}
