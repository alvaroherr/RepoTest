\name{f_t_ratio_build}
\alias{f_t_ratio_build}
\title{
Creates a blank dataframe structure to be used in f_ratio
}
\description{
Contains row and column strucutre to be used in f_ratio
}
\usage{
f_t_ratio_build(data1, data2 = t_definitions)
}
\arguments{
\item{data1}{
- The first Dataset to be used. The names of the rows (borrowers) to be used for final dataframe
}

\item{data2}{
- The second Dataset to be used. The names of the columns (ratios along with symbol & date) to be used for the final dataframe. The default is set to the dataframe t_definitions.
}
}
\value{
Returns an empty dataframe
}
\examples{
t_ratio <- f_t_ratio_build(data1 = t_financial_data, data2 = t_definitions)
}

