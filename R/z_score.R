#' Calculate z-scores
#'
#' @param x A numeric vector.
#'
#' @return A numeric vector of z-scores with the same length as x.
#' @export
#'
#' @examples
#' z_score(c(1, 2, 3, 4, 5))
#' z_score(c(2, 4, 4, 4, 5, 5, 7, 9))
z_score <- function(x) {
  (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
}
