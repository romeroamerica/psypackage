#' Simulate a Yu-Gi-Oh duel outcome
#'
#' @param name1 A character string. Name of the first monster.
#' @param atk1 Numeric. Attack points of the first monster.
#' @param name2 A character string. Name of the second monster.
#' @param atk2 Numeric. Attack points of the second monster.
#'
#' @return Prints the duel outcome to the console.
#' @export
#'
#' @examples
#' duel_outcome("Blue-Eyes White Dragon", 3000, "Dark Magician", 2500)
duel_outcome <- function(name1, atk1, name2, atk2) {
  attacks <- c(
    "Blue-Eyes White Dragon"   = "White Lightning",
    "Dark Magician"            = "Dark Magic Attack",
    "Exodia the Forbidden One" = "Obliterate",
    "Red-Eyes Black Dragon"    = "Inferno Fire Blast"
  )
  attack1 <- ifelse(name1 %in% names(attacks), attacks[name1], "attacks")
  attack2 <- ifelse(name2 %in% names(attacks), attacks[name2], "attacks")
  if (atk1 > atk2) {
    cat(name1, "attacks with", attack1, "!\n")
    cat(name2, "is destroyed!", name1, "deals", atk1 - atk2, "damage to your opponent.\n")
  } else if (atk2 > atk1) {
    cat(name2, "attacks with", attack2, "!\n")
    cat(name1, "is destroyed!", name2, "deals", atk2 - atk1, "damage to your opponent.\n")
  } else {
    cat(name1, "attacks with", attack1, "!\n")
    cat(name2, "attacks with", attack2, "!\n")
    cat("Both monsters are destroyed! No damage dealt.\n")
  }
}
