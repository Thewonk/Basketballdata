#' Makes a Correlation Plot
#'
#' @param data A dataframe, the data for which you want to produce a
#' correlation plot
#' @param year A numeric value, the year for which you want the data
#'
#' @return A plot that shows the numerical value of correlations between
#' numeric variables in the data
#' @export
#'
#' @examples
#' nba <- read.csv(file = "../data/Seasons_Stats_NBA.csv")
#' make_corr_plot(data = nba, year = 1985)
#'
make_corr_plot <- function(data, year) {
  library(corrplot)
  numericalvariable<-select_if(data, is.numeric)
  yearnumerical <- subset(numericalvariable, Year==year)
  corrplot(cor(yearnumerical), method="color")
}
