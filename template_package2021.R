## Instructions for use ##
# 1. Change path in line 7 and line 44 to the respective path in user folder
# 2. Ctrl a then Ctrl enter

################################
library(devtools)
#install.packages("/Users/aherraez/Downloads/financial-tool/packages/GTquantrisk_0.1.0.tar.gz", repos=NULL, type="source")

#install.packages("/Users/aherraez/Downloads/financial-tool/packages/StatMeasures_1.0.tar.gz", repos=NULL, type="source")

################################

library(janitor)
library(dlookr)
library(readxl)
library(shiny)
library(DT)
library(reshape2)
library(dplyr)
library(ggplot2)
library(shinydashboard)
library(shinyjs)
library(RColorBrewer)
library(dlookr)
library(corrplot)
library(lessR)
library(plotly)
library(skimr)
library(naniar)
library(visdat)
library(purrr)
library(rvest)
library(StatMeasures)
library(na.tools)
library(lubridate)
library(shinymanager)
library(shinyauthr)
library(sodium)
library(ggjoy)
library(readr)
library(GTquantrisk)


################################
mapping <- GTquantrisk::mapping
industry <- GTquantrisk::industry
t_definitions <- GTquantrisk::t_definitions



#original!

#initial_data <- read_csv("/Users/aherraez/Downloads/financial-tool/docs/initial_data.csv")

#library(readxl)
#initial_data <- read_excel("/Users/aherraez/Downloads/consolidated_data_final.xlsx",skip=1)
library(readr)

initial_data <- read_csv("/Users/aherraez/Downloads/financial-tool/docs/short_test.csv")

initial_data <- separate(initial_data, col = 1, sep = ";",
                         into = c("Dates", "Year", "SALES_REV_TURN", "IS_COGS_TO_FE_AND_PP_AND_G",
                                  "GROSS_PROFIT", "IS_OPER_INC", "EBITDA", "IS_INC_TAX_EXP",
                                  "EBIT", "IS_INT_EXPENSE", "IS_INT_INC", "IS_NET_INTEREST_EXPENSE",
                                  "IS_DEPR_EXP","IS_INVEST_INCOME", "BS_TOT_ASSET", "TOTAL_EQUITY", "BS_TOT_LIAB2",
                                  "BS_ST_DEBT", "BS_LT_BORROW", "C&CE_AND_STI_DETAILED", "BS_SH_OUT",
                                  "BS_CUR_ASSET_REPORT", "BS_CUR_LIAB", "BS_ACCT_NOTE_RCV", "ACCT_PAYABLE_ACCRUALS_DETAILED",
                                  "BS_ACCT_PAYABLE", "BS_ACCTS_REC_EXCL_NOTES_REC", "BS_INVENTORIES", "CF_CASH_FROM_OPER", "CF_CASH_FROM_INV_ACT",
                                  "CF_CASH_FROM_FNC_ACT","ARD_NET_INC", "SHORT_TERM_DEBT_DETAILED","LONG_TERM_BORROWINGS_DETAILED","symbol"),
                         remove = TRUE)

?na.omit

initial_data <- na.omit(initial_data)
initial_data$Dates <- as.Date(format.Date(as.Date(initial_data$Dates,format = "%d/%m/%Y"), "%Y-12-31"))

initial_data <- initial_data[,c(2:ncol(initial_data))]

dates <- initial_data$Dates

step_1 <- f_standard_clean_final(initial_data)

step_2 <- f_remove_wrong(step_1)

step_3 <- f_binded_data(step_2)

step_4 <- f_t_ratio_build(step_3, t_definitions)

step_5 <- f_ratio(step_4, step_3,"no")

step_6 <- f_reshape(step_5)

step_5a <- left_join(step_5,industry,by=c("symbol"))

step_6a <- melt(step_5a, id.vars = c("symbol","date","sector")) %>%
  filter(variable != "industry")

step_6a$variable <- as.character(step_6a$variable)

step_6a <- step_6a %>%
  left_join(step_6[,c(1,2,3,5)], by = c("symbol" = "symbol", "date" = "date", "variable" = "variable"))

step_6a$date <- as.Date(step_6a$date, "%Y-%m-%d")
step_6a$value <- as.numeric(step_6a$value)

ui <- f_ui_build(step_5a)

server <- f_server_build(def_table = t_definitions, final_table = step_6a, joined_table = step_5a)

shinyApp(ui=ui,server=server)

