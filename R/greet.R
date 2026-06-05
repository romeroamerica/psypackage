#' Greet the user with commentary based on the time!
#'
#' @param name A character string. The name to greet.
#'
#' @return A character string containing the greeting with some funny options based on time of day.
#' @export
#'
#' @examples
#' greet(name = "America")
greet <- function(name = "researcher") {
  hour <- as.integer(format(Sys.time(), "%H"))
  comment <- if (hour < 5)        "How are you awake? Or did we stay up all night."
  else if (hour < 12)  "Good morning sunshine!"
  else if (hour < 17)  "Good Afternoon. Hope this isn't your first task of the day..."
  else if (hour < 23)  "I think we should watch Love Island UK instead, I think that's more interesting than what's going on here."
  else                 "It's basically tomorrow. What are we doing? What is going on?"
  msg <- sprintf("Nice to see you, %s. %s", name, comment)
  message(msg)
  invisible(msg)
}
greet(name = "America")
