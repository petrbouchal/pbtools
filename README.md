pbtools
=======

Personal package for reusable code and data

The code to install this on a Windows machine with limited permissions:

```r
devtools::install_github('petrbouchal/pbtools',args=c('--library=\"C:/PROGRA~1/R/R-30~1.2/library\"'))
```

## To do

- [x] FIX saveplot()
- [ ] rewrite/improve custom theme handling
- [ ] integrate splicing CSVs (code contained in Charting government repo)
- [ ] integrate customised shinyapps deploy + add password prompt (?) - (code contained in Charting government repo)
- [ ] wrapper function for enriching data by inner-joining a csv in one line
- [x] function for creating date-marked folder (e.g. data_20130503_1215)
- [x] function for creating date-marked file name (e.g. data_20130503_1215.csv)
- [ ] platform-independent file download function
- [ ] function for creating CSVs out of excel workbook and naming them (already implemented in python)
- [x] fix names of colour matrices + create separate files for basic set and tints
- [x] document knit2byrokrates()
