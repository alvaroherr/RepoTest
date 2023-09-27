\name{f_ratio}
\alias{f_ratio}

\title{Creates a dataframe of financial ratios}

\description{This function takes the df2 dataframe argument containing all the financial figues, and uses these figures to calculate financial ratios and then adds these ratios to the empty df2 dataframe argument to produce a dataframe of all the possible financial ratios.}

\usage{
f_ratio(df1, df2)}

\arguments{
  \item{df1}{- Empty dataframe built in f_t_ratio_build() with column names labelled as all the financial ratios.}
  \item{df2}{- Dataframe built in f_lagged_df() containing all the financial figures as well as the lagged figures.}
}

\value{Returns a dataframe of all the financial ratios.}
