\name{f_outliers}
\alias{f_outliers}
\title{
Extracts outliers per each financial ratio
}
\description{
Extracts outliers per each financial ratio for use in Outlier Analysis tab of the Financial Tool shinyApp. Allows user to view the observations (companies / borrowers) considered as outliers.
}
\usage{
f_outliers(dataframe)
}
\arguments{
  \item{dataframe}{
- A Dataset i.e a dataframe, from which the outliers are mapped per each financial ratio. Preferably it will be the dataframe produced by f_reshape as the ratios are subsetted by type.
}
}
\value{
A Dataframe with the rows that are considered outliers.
}

\examples{
t_outliers <- f_outliers(dataframe = reshaped_t_ratio)
}
