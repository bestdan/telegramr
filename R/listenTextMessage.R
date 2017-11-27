#' @name listenTextMessage
#' @title listenTextMessage
#' @description Send a message to a chatId
#' @param token Your bot's API token.
#' @importFrom httr POST
#' @examples
#' \dontrun{
#' postTextReply(token = token, chat_id = "475093487", text_message = "Hi there!")
#' }
#'

listenTextMessage <- function(token, chat_id, text_message){
  stop("doesnt work  yet")
  # full_url <- paste0(base_url,
  #                    token, "/",
  #                    method,
  #                    "?chat_id=", chat_id,
  #                    "&text=",    text_message)
  # httr::POST(url = full_url)
}
