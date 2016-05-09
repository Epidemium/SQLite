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
* Documentation: https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf
```
#### Install DBI and RSQLite
install.packages("RSQLite")
install.packages("DBI")

# Load required libraries
library(DBI)
library(RSQLite)

# Connecting to EpidemiumDB_v1.0.db
setwd(path_to_EpidemiumDB_v1.0.db)
system("ls *.db", show=TRUE)

sqlite      <- dbDriver("SQLite")
EpidemiumDB <- dbConnect(sqlite,"EpidemiumDB_v1.0.db")

# List of tables
dbListTables(EpidemiumDB)
# [1] "baselineCondition" "cancerType"        "collectedData"    
# [4] "country"           "location"          "locationPartOf"   
# [7] "metadata"

# List of fields in CancerType Table
dbListFields(EpidemiumDB, "cancerType")
# [1] "cancerType_id"                   "cancerType_name"                
# [3] "cancerType_otherName"            "cancerType_frenchName"          
# [5] "cancerType_bodySystem"           "cancerType_ICD10"               
# [7] "cancerType_ICDO3"                "cancerType_SNOMED"              
# [9] "cancerType_MeSH"                 "cancerType_OMIM"                
# [11] "cancerType_medlinePlus"          "cancerType_WHOpage"             
# [13] "cancerType_createdBy"            "cancerType_creationDate"        
# [15] "cancerType_lastModifiedBy"       "cancerType_lastModificationDate"
# [17] "cancerType_validationStatus"  

# Examples of queries to use of EpidemiumDB RSQLite
# Table Country
dbGetQuery(EpidemiumDB, "select * from country where country_name = 'France'")

#country_id country_name country_iso2 country_iso3 country_numericCode
# 1          1       France           FR          FRA                 250
# country_WHOcancerCountryProfile
# 1 http://who.int/cancer/country-profiles/fra_en.pdf?ua=1
#              country_statsData
# 1 http://lesdonnees.e-cancer.fr

results <- dbGetQuery(EpidemiumDB, 
                      "select * from country where country_name = 'France'")

query4="select * from collectedData"
rs4=dbSendQuery(EpidemiumDB,query4)
res4=fetch(rs4,n=-1)
head(res4)

```





## Using EpidemiumDB using the SQLite Database Browser



### Releases
Version 1.0 released - 2016-05-09
