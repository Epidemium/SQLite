# EpidemiumDB SQLite
### Sqlite version of EpidemiumDB (version 1.0)
SQLite version contains EpidemiumDB tables that are needed for analyses. The current version contains 9 tables from BD4Cancer and Baseline projects.
### Latest update 
The current version was generated on May, 9th, 2016

## Using EpidemiumDB SQLite in R
To use EpidemiumDB (SQLite version) in R, the two packages RSQLite and DBI need to be installed.
* RSQLITE (CRAN) : https://cran.r-project.org/web/packages/RSQLite/index.html
* RSQLITE on Github : https://github.com/rstats-db/RSQLite
* DBI: https://cran.r-project.org/web/packages/DBI/index.html
* 
'''
#### Install DBI and RSQLite
install.packages("RSQLite")
install.packages("DBI")

# Load required libraries
library(DBI)
library(RSQLite)
'''

# ## connecting/using an existing file


## Using EpidemiumDB using the SQLite Database Browser



### Releases
Version 1.0 released - 2016-05-09
