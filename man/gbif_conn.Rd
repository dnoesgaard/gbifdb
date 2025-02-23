% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gbif_conn.R
\name{gbif_conn}
\alias{gbif_conn}
\title{A \verb{[DBI]}-style database connection to GBIF data}
\usage{
gbif_conn(
  dir = gbif_parquet_dir(version = gbif_version(local = TRUE)),
  tblname = "gbif",
  backend = c("arrow", "duckdb")
)
}
\arguments{
\item{dir}{the directory containing all parquet files to be read}

\item{tblname}{name of the table to be created in the duckdb VIEW}

\item{backend}{Use arrow or duckdb as backend connection?}
}
\value{
a \code{DBIconnection} object
}
\description{
Returns a database connection to the local GBIF parquet file.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}

gbif.parquet <- gbif_example_data()
con <- gbif_conn(gbif.parquet)
\dontshow{\}) # examplesIf}
}
