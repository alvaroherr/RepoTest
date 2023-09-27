\name{f_remove_wrong}
\alias{f_remove_wrong}
\title{Removes extreme outliers from data}
\description{
Loops through each companies financial data, calculates the median per each value and removes values that are 50 times larger than the median value
}
\usage{
f_remove_wrong(t_input)
}
\arguments{
\item{t_input}
{- The Dataset, ie a Dataframe}
}
\value{
Returns a dataframe with values deemed incorrect (50 times larger than median value) as NA
}
\examples{
f_remove_wrong(t_input = t_financial_data)
}
