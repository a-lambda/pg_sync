# Connection à une base de données distante

library(RPostgres)
library(tidyverse)

DB_HOSTNAME <- Sys.getenv("DB_HOSTNAME")
DB_USER <- Sys.getenv("DB_USER")
DB_PASSWORD <- Sys.getenv("DB_PASSWORD")
DB_PORT <- Sys.getenv("DB_PORT")
DB_NAME <- Sys.getenv("DB_NAME")

conn <- RPostgres::dbConnect(
  drv = RPostgres::Postgres(), 
  dbname = DB_NAME,
  host = DB_HOSTNAME,
  port = DB_PORT,
  user = DB_USER,
  password = DB_PASSWORD
  )

RPostgres::dbListTables(conn)

# Connection à une base de données postGIS

library(sf)
library(RPostgreSQL)

conn <- RPostgreSQL::dbConnect(
  drv = PostgreSQL(), 
  dbname = "rtafdf_zljbqm",
  host = "db.qgiscloud.com",
  port = "5432",
  user = "rtafdf_zljbqm",
  password = "d3290ead"
  )

RPostgreSQL::dbListTables(conn)