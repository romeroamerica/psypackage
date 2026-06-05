#' Fit and plot a simple linear regression
#'
#' @param x Predictor (numeric vector).
#' @param y Response (numeric vector).
#' @return The fitted lm object.
#' @export
#'
#' @examples
#' predictor <- c(2,3,4,6,7,8,9,10)
#' response <- c(4,5,7,8,8,6,8,10)
#' quick_lm(predictor, response)
quick_lm <- function(x, y) {
  if (length(x) != length(y)) stop("x and y must be the same length")

  xlab <- deparse(substitute(x))
  ylab <- deparse(substitute(y))

  fit <- lm(y ~ x)
  coefs <- coef(fit)
  r2 <- summary(fit)$r.squared

  newx <- seq(min(x), max(x), length.out = 100)
  ci <- predict(fit, newdata = data.frame(x = newx),
                interval = "confidence")

  plot(x, y,
       pch = 21, bg = "steelblue", col = "white", cex = 1.4,
       xlab = xlab, ylab = ylab,
       main = sprintf("%s ~ %s", ylab, xlab),
       las = 1, bty = "n")
  grid(col = "gray90", lty = 1)

  polygon(c(newx, rev(newx)), c(ci[, "lwr"], rev(ci[, "upr"])),
          col = adjustcolor("firebrick", alpha.f = 0.15), border = NA)

  lines(newx, ci[, "fit"], col = "firebrick", lwd = 2.5)

  eqn <- sprintf("y = %.2f + %.2fx\nR-squared = %.3f",
                 coefs[1], coefs[2], r2)
  legend("topleft", legend = eqn, bty = "n", text.col = "gray30")

  invisible(fit)
}
