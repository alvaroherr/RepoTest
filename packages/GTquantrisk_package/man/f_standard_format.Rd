\name{f_standard_format}
\alias{f_standard_format}

\title{Standardise dataframe structure.}

\description{This function takes a dataframe and the mapping document to produce a dataframe of standard format where "symbol" and "date" are the first and second columns followed by all other financial factors (Note: this function should be run on the dataframe produced by the f_standardise_colnames() and then f_standard_size() in order to ensure that the "symnbol" and "date" columns are in the conventional naming format).}

\usage{
f_standard_format(t_input, t_map = mapping)}

\arguments{
  \item{t_input}{- Dataframe produced from f_standardise_colnames() and then further passed through f_standardise_colnames().}
  \item{t_map}{- Mapping document containing both the dataset column names and the financial factor names in standard format.}
  }

\value{Returns a dataframe where "symbol" and "date" are the first and second columns followed by all other financial factors.}
