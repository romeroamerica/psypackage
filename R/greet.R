#' Greet someone by name
#'
#' @param name A character string. The name to greet.
#' @param loud Logical. Should the greeting be uppercase? Default is FALSE.
#'
#' @return A character string containing the greeting.
#' @export
#'
#' @examples
#' greet("America")
#' greet("America", loud = TRUE)
greet <- function(name, loud = FALSE) {
  msg <- paste0("Hello! ", name, "! Welcome to America's package! Happy to have you here :)")
  if (loud) toupper(msg) else msg
}
