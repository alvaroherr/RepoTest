\name{f_columns}
\alias{f_columns}
\title{Names of columns for final dataframe}
\description{
Creates the names to be used for the final dataframe. Uses the ratio names from the t_definitions dataframe and also includes "symbol" & "date".
}
\usage{
f_columns(data)
}
\arguments{
  \item{data}{
- The Dataset, ie a Dataframe, the default is set to t_definitions
}
}
\value{
Returns a vector of the column names to be used for the final dataframe
}
\examples{
Column_names <- f_columns(definitions = t_definitions)
}

