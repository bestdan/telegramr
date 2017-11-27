#' @title newEventRouter
#' @description Route a new message to the appropriate service
#' @param token Your bot's API token.
#' @param chat_id A chat id.
#' @param text_message The text message you want to send.
#' @examples
#' \dontrun{
#' newEventRouter(chat_id, message_text)
#' }
#'

newEventRouter <- function(chat_id, message_text){

  res <- switch(message_text,
                "/start" = welcomeNewUser(chat_id, message_text),
                "/addTask" = addTask(chat_id),
                "/taskStatus" = taskStatus(chat_id, message_text),
                "/taskAnalysis" = taskAnalysis(chat_id, message_text))

}
