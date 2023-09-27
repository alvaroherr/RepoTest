\name{f_statistical_overview}
\alias{f_statistical_overview}

\title{Produces various statistics of a dataframe}

\description{This function produces interesting summary statistics about the financial ratios from the dataframe that have been built from f_ratio(). The dataframe can be subsetted based on year, this can be manually inputted when used outside the Rshiny app or automatically inputted through the use of a date slider within the Rshiny app.}

\usage{
f_statistical_overview(year1,year2,data)
}

\arguments{
  \item{year1}{- The beginng year for which to subset the data.}
  \item{year2}{- The end year for which to subset the data.}
  \item{data}{- Dataframe for which you want to create summary statistics from column 3 on ("symbol" and "date" should be the first two columns).}
}

\value{Returns a table of summary statistics such as missing count, missing percent, outlier count, outlier ratio, minimun, Q1, mean, median, Q3, and max.}
