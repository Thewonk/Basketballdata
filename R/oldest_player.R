#' Oldest Player in a Year
#'
#' @param year numeric value, the year that is intended to find the oldest player
#' @param data dataframe, the data set that is analyzed
#'
#' @return A character object of the name of the oldest player for the given
#' year in the dataset
#' @export
#'
#' @examples
#' nba <- read.csv(file = "../data/Seasons_Stats_NBA.csv")
#' oldest_player(year = 1985, data = nba)
#'
oldest_player <- function(year, data) {
  year.subset <- subset(data, Year==year)
  index <- which(year.subset$Age==max(year.subset$Age))
  OP <- year.subset[index,]$Player
  if(length(OP)>1){
    OP[order(OP)[1]]
  }
return(OP)
}


