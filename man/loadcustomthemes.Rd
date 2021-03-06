% Generated by roxygen2 (4.0.2): do not edit by hand
\name{loadcustomthemes}
\alias{loadcustomthemes}
\title{Load custom theme}
\usage{
loadcustomthemes(mycols = themebasecolours, fontfamily = "Helvetica",
  tints = c(0.75, 0.5, 0.25), shades = NULL)
}
\arguments{
\item{mycols}{A vector of colours in hex (HTML) format. Defaults to ugly.}

\item{fontfamily}{Font family. Defaults to 'Helvetica'}

\item{tint}{Vector of 0-1 value for shades to embed in theme. Defaults to .75,.5,.25}

\item{shade}{Vector of 0-1 values for shades to embed in theme. Defaults to NULL}
}
\value{
TRUE
}
\description{
Create custom ggplot theme based on a set of colours and a font family
}
\examples{
loadcustomthemes()
}
\keyword{ggplot,}
\keyword{themes}

