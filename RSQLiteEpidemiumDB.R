#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: RSQLiteEpidemiumDB.R  
# Date of creation: 9 mai 2016
# Date of last modification: 9 mai 2016
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Project: Epidemium (http://www.epidemium.cc)
# Short Description: This script provides functionalities to use EpidemiumDB SQLite version
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

library(DBI)
library(RSQLite)

setwd("path_to_EpidemiumDB")

system("ls *.db", show=TRUE)
sqlite      <- dbDriver("SQLite")
EpidemiumDB <- dbConnect(sqlite,"EpidemiumDB_v1.0.db")

# List of tables
dbListTables(EpidemiumDB)

# List of fields in CancerType Table
dbListFields(EpidemiumDB, "cancerType")

# Example use of EpidemiumDB RSQLite
dbGetQuery(EpidemiumDB, 
           "select * from country where country_name = 'France'")

results <- dbGetQuery(EpidemiumDB, 
                      "select * from country where country_name = 'France'")

query4="select * from collectedData"
rs4=dbSendQuery(EpidemiumDB,query4)
res4=fetch(rs4,n=-1)
head(res4)
