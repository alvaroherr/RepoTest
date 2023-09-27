\name{f_standardise_colnames}
\alias{f_standardise_colnames}

\title{Standardise column names to the names located within the mapping document.}

\description{This function takes raw data and the mapping document to produce a dataframe with column names labelled as per the mapping document. Column names in the raw data will change to the names in the mapping document (located at [i,1]) as long as the column names in the raw data exactly match the elements of the mapping document (located at [1,2:ncol(mapping)]).}

\usage{
f_standardise_colnames(t_input, t_map = mapping)}

\arguments{
  \item{t_input}{- Dataframe of raw data.}
  \item{t_map}{- Mapping document containing both the dataset column names and the financial factor names in standard format.}
  }

\value{Returns a dataframe with column names renemed to appropriate financial factor names in standard format.}
