\name{f_standard_clean_final}
\alias{f_standard_clean_final}

\title{Standardise raw data to dataframe that is useable for financial tool Shiny app.}

\description{This function takes raw data and the mapping document to produce a dataframe with column names labelled as per the mapping document, of standard size where the number of column names equals number of mapping variables and of standard format where "symbol" and "date" are the first and second columns followed by all other financial factors.}

\usage{
f_standard_clean_final(t_input, t_map = mapping)}

\arguments{
  \item{t_input}{- Dataframe of raw data.}
  \item{t_map}{- Mapping document containing both the dataset column names and the financial factor names in standard format.}
  }

\value{Returns a dataframe with appropriately labelled column names, appropriate dimensions and appropriate format to be used in the financial tool Shiny app.}
