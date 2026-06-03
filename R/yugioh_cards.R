#' Yu-Gi-Oh! Cards Dataset
#'
#' A dataset containing 60 iconic Yu-Gi-Oh! cards from the original series,
#' including monster stats, card attributes, rarity, and competitive status.
#'
#' @format A data frame with 60 rows and 10 columns:
#' \describe{
#'   \item{name}{Character. The name of the card.}
#'   \item{card_type}{Character. Either "Monster" or "Spell".}
#'   \item{attribute}{Character. The card attribute (DARK, LIGHT, EARTH, WIND, FIRE, WATER, DIVINE). NA for Spell cards.}
#'   \item{monster_type}{Character. The monster type (Dragon, Spellcaster, Warrior, etc.). NA for Spell cards.}
#'   \item{atk}{Numeric. Attack points of the monster. NA for Spell cards.}
#'   \item{def}{Numeric. Defense points of the monster. NA for Spell cards.}
#'   \item{level}{Numeric. The level of the monster (1-11). NA for Spell cards.}
#'   \item{rarity}{Character. Card rarity (Common, Rare, Super Rare, Ultra Rare).}
#'   \item{power_rating}{Numeric. Community power rating on a 1-5 scale (1 = weak, 5 = extremely powerful).}
#'   \item{is_banned}{Logical. Whether the card is on the competitive forbidden list.}
#' }
#'
#' @examples
#' head(yugioh_cards)
#'
#' # Use with z_score()
#' z_score(yugioh_cards$atk[!is.na(yugioh_cards$atk)])
#'
#' # Use with cohen_d() - compare ATK of Dragons vs Warriors
#' monsters <- yugioh_cards[yugioh_cards$card_type == "Monster", ]
#' dragons  <- monsters[monsters$monster_type == "Dragon", ]
#' warriors <- monsters[monsters$monster_type == "Warrior", ]
#' cohen_d(dragons$atk, warriors$atk)
#'
#' # Use with duel_outcome()
#' duel_outcome("Blue-Eyes White Dragon", 3000, "Dark Magician", 2500)
"yugioh_cards"
