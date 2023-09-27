\name{f_standard_size}
\alias{f_standard_size}

\title{Standardise dataframe dimensions.}

\description{This function takes a dataframe and the mapping document to produce a dataframe of standard size where the number of column names equals number of mapping variables. This is done by removing the column names in the dataframe that aren't in the first column of the mapping document. Any excess names in the mapping document that aren't in the dataframe are joined to the dataframe as an empty vector (Note: this function should be run on the dataframe produced by the f_standardise_colnames() in order to minimise the amount of columns being removed, thus, retaining the maximum possible data).}

\usage{
f_standard_size(t_input, t_map = mapping)}

\arguments{
  \item{t_input}{- Dataframe produced from f_standardise_colnames().}
  \item{t_map}{- Mapping document containing both the dataset column names and the financial factor names in standard format.}
  }

\value{Returns a dataframe with the number of column names equal to number of mapping variables.}

