#' @name sendTextMessage
#' @title sendTextMessage
#' @description Send a text message to a chatId.
#' @param token Your bot's API token.
#' @param chat_id A chat id.
#' @param text_message The text message you want to send.
#' @importFrom  httr POST
#' @examples
#' \dontrun{
#' sendTextMessage(token = token, chat_id = "475093487", text_message = "Hi there!")
#' }
#'

sendTextMessage <- function(token, chat_id, text_message){
  full_url <- paste0("https://api.telegram.org/bot",
                     token, "/",
                     method,
                     "?chat_id=", chat_id,
                     "&text=",    text_message)
  httr::POST(url = full_url)
}
