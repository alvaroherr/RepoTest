\name{f_ui_build}
\alias{f_ui_build}
\title{
Creates user interface to be used for Financial Tool shinyApp
}
\description{
Creates a user interface for the shinyApp call in order to build the Financial Tool. Combination of conditional sidepanels and the layout of the body of the Application. Specifies the inputs to be used in the server and the format of the server outputs.
}
\usage{
f_ui_build(data1, data2 = t_definitions)
}
\arguments{
\item{data1}{
- A Dataset, i.e a Dataframe. Purpose of this dataframe is to create the grouping list to be included as inputs into the server as well as the date ranges for the slider inputs on various sidepanels. Preferably the output of f_t_ratio_build().
}
\item{data2}{
- A Dataset, i.e a Dataframe. Purpose is to generate the list of ratio types to be selected by user on conditional sidepanels. Default is set to t_definitions.
}
}
\value{
A large shiny tag to be used for the ui argument in the shinyApp() call.
}
\examples{
ui <- f_ui_build(data1 = t_ratio, data2 = t_definitions)
}
