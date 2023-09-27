\name{f_binded_data}
\alias{f_binded_data}

\title{Binds two dataframes together.}

\description{Column binds the outputs from f_all_data_wide() and f_lagged_df().}

\usage{
f_binded_data(t_input)}

\arguments{
  \item{t_input}{- Dataframe}
}

\value{Produces wide dataframe grouped by "symbol" from data passes through this function as well a lag of this data.}
