#' Calculate Cohen's d effect size
#'
#' @param group1 A numeric vector for the first group.
#' @param group2 A numeric vector for the second group.
#'
#' @return A single numeric value representing Cohen's d.
#' @export
#'
#' @examples
#' cohen_d(c(1, 2, 3, 4, 5), c(3, 4, 5, 6, 7))
cohen_d <- function(group1, group2) {
  pooled_sd <- sqrt((sd(group1, na.rm = TRUE)^2 + sd(group2, na.rm = TRUE)^2) / 2)
  (mean(group1, na.rm = TRUE) - mean(group2, na.rm = TRUE)) / pooled_sd
}
