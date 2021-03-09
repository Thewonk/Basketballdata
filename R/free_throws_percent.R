#' The Free Throw Percentage
#'
#' @param year numeric value, the year sought for free throw percentage
#' @param player character value, the player that produced the free throw
#' percentage
#' @param data dataframe, the dataset that is analyzed
#'
#' @return A numeric value that shows the free throw percentage
#' @export
#'
#' @examples
#' nba <- read.csv(file = "../data/Seasons_Stats_NBA.csv")
#' free_throw_percent(year = 1985, player = "Mike Mitchell", data = nba)
#'
free_throws_percent <- function(year, player, data) {
 extract_row <- subset(data, Year==year & Player==player)
 freethrows <- extract_row$FT.
 return(freethrows)
}

