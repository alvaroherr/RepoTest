\name{f_borrowers}
\alias{f_borrowers}
\title{Extract list of borrowers for dataset}
\description{
Extracts list of borrowers to be used for dataframes consistently throughout the Financial Tool
}
\usage{
f_borrowers(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{data}{- The Dataset, ie a Dataframe.}
}
\value{
Returns a vector of the borrowers (i.e companies) in alphabetical order to be binded onto final dataframes.
}
\examples{
f_borrowers(data = t_finanical_data)
}
