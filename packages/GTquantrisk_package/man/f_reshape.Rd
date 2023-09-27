\name{f_reshape}
\alias{f_reshape}
\title{Transforms wide dataframe to long dataframe}
\description{
Transforms wide dataframe produced by f_ratio into a long dataframe. Allows for subsetting of ratio by the type of ratio.
}
\usage{
f_reshape(data1, data2 = t_definitions)
}
\arguments{
\item{data1}{
- A Dataset to be used. This will be the dataset that is produced by f_ratio. This dataset will be made longer.
}
\item{data2}{
- A Dataset to be used. This dataset will be the one with the names of the financial ratios and their type. The default is set to t_definitions.
}
}
\value{
Returns a long dataframe with each ratio value as a row.
}
\examples{
reshaped_t_ratio <- reshaped(data1 = t_ratio, data2 = t_definitions)
}
