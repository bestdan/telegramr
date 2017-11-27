#' @name getUpdates
#' @title getUpdates
#' @description Gets updates from Telegram bot and parses json response.
#' @param token Your bot's API token.
#' @param last_update_id The last message id received. Prevents huge queries to Telegram. Only get new stuff.
#' @importFrom jsonlite fromJSON
#' @examples
#' \dontrun{
#' results <- getUpdates(token = "XXXXXXX")
#' }

getUpdates <- function(token, lastUpdateID){
  temp_url <- paste0(paste0("https://api.telegram.org/bot",
                            token, "/",
                            "getUpdates"))
  res <- jsonlite::fromJSON(txt = temp_url)
  return(res)
}


