pbtools
=======

Personal package for reusable code and data

The code to install this on a Windows machine with limited permissions:

```r
devtools::install_github('petrbouchal/pbtools',args=c('--library=\"C:/PROGRA~1/R/R-30~1.2/library\"'))
```

# To do

* wrapper function for enriching data by inner-joining a csv in one line
* function for creating date-marked folder (e.g. data_20130503_1215)
* function for creating date-marked file name (e.g. data_20130503_1215.csv)
* platform-independent file download function
* function for creating CSVs out of excel workbook and naming them (already implemented in python)
* ~~fix names of colour matrices + create separate files for basic set and tints~~
