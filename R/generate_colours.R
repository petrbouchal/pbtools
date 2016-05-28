generatecolours <- function(palettename="palettename") {
  mmrpalette <- list()
  mmrpalette['primary'] <- list(c("#000099",
                                "#00af3f",
                                "#f9e300",
                                "#000000"))
  mmrpalette['secondary'] <- list(c('#e21c18',
                                  '#24a74b',
                                  '#868686'))
  save(mmrpalette, file = paste0("./data/",palettename,".rda"))
}
