#' Greet someone by name, another version of greet
#'
#' @param name A character string. The name to greet.
#' @param loud Logical. Should the greeting be uppercase? Default is FALSE.
#'
#' @return A character string containing the greeting.
#' @export
#'
#' @examples
#' greet_mean("America")
#' greet_mean("America", loud = TRUE)
greet_mean <- function(name, loud = FALSE) {
  msg <- paste0("Hello, ", name, "! Why are you here?")
  if (loud) toupper(msg) else msg
}
