\name{f_lagged_df}
\alias{f_lagged_df}

\title{Lags the data to the previos years values and joins these on to the original dataframe.}

\description{this function lags the data to the previos years values and joins these values on to the original dataframe. This is done in order to calculate trend ratios.}

\usage{
f_lagged_df(t_input)}

\arguments{
  \item{t_input}{- Dataframe of financial figures that you wish to be lagged by one year and amalgamated to the original dataframe}
}

\value{Returns the original dataframe passed through it along with the lagged figures of that dataframe}
