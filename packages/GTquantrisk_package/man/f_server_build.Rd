\name{f_server_build}
\alias{f_server_build}
\title{
Creates the server to be used in the Financial Tool shinyApp
}
\description{
Creates the server to be used in the Financial Tool shinyApp. Responds to the inputs from the user interface and produces outputs specified by the user interface.
}
\usage{
f_server_build(def_table = t_definitions, final_table, joined_table)
}
\arguments{
\item{def_table}{
- A Dataset, i.e a dataframe. Used to subset the conditional sidepanels based on user choice of variable type. The default setting is t_definitions.
}
\item{final_table}{
- A Dataset, i.e a dataframe. Used as a master dataframe from which reactive dataframes are made throughout the server. Comes from the output of f_reshape() and will therefore be a longer dataframe than joined_table.
}
\item{joined_table}{
- A Dataset, i.e a dataframe. Used as a master dataframe from which reactive dataframes are made throughout the server. Comes from the output of f_ratio and will contain a column for the grouping of each observation (company / borrower) in the population.
}
}
\value{
Returns a function to be used as the server argument for shinyApp() call to build financial tool.
}
\examples{
server <- f_server_build(def_table = t_definitions, final_table = reshaped_t_ratio, joined_table = t_ratio)
}
