#' @name getAuthenticationKey
#' @title getAuthenticationKey
#' @description Get a local authentication key for interacting with Telegram
#' @param bot The yaml block which corresponds to your key.
#' @importFrom  yaml yaml.load_file
#' @examples
#' \dontrun{
# res <- getAuthenticationKey(bot="life_tasker")
#' }

getAuthenticationKey <- function(file_path = "~/src/telegram_credentials.yaml", bot){
  token <- yaml::yaml.load_file(file_path)[[bot]]$token
  return(token)
}

