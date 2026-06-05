#' Convert human years to dog years, using the 2019 formula published by UCSD School of Medicine.
#'
#' @param human_years Age in human years.
#' @return Numeric dog equivalent age.
#' @export
#'
#' @examples
#' dog_years(26)
dog_years <- function(human_years) {
  dog_age <- 16 * log(human_years) + 31
  message(sprintf("That's about %.0f in dog years.", dog_age))
  invisible(dog_age)
}
