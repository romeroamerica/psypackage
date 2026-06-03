## code to prepare `yugioh_cards` dataset goes here

yugioh_cards <- data.frame(
  name = c(
    "Blue-Eyes White Dragon", "Dark Magician", "Exodia the Forbidden One",
    "Red-Eyes Black Dragon", "Summoned Skull", "Celtic Guardian",
    "Kuriboh", "Beaver Warrior", "Gaia the Fierce Knight", "Curse of Dragon",
    "Dark Magician Girl", "Buster Blader", "Obelisk the Tormentor",
    "Slifer the Sky Dragon", "The Winged Dragon of Ra", "Saggi the Dark Clown",
    "Mystical Elf", "Wall of Illusion", "Man-Eater Bug", "Harpie Lady",
    "Harpie Lady Sisters", "Magician of Faith", "Witch of the Black Forest",
    "Sangan", "Jinzo", "Barrel Dragon", "Gemini Elf", "La Jinn the Mystical Genie",
    "Luster Dragon", "Exodia Necros", "Gate Guardian", "Launcher Spider",
    "Sword Hunter", "Insect Queen", "Perfectly Ultimate Great Moth",
    "Thousand-Eyes Restrict", "Relinquished", "Dark Ruler Ha Des",
    "Yata-Garasu", "Injection Fairy Lily", "Vampire Lord", "Fiber Jar",
    "Chaos Emperor Dragon", "Black Luster Soldier", "Dark Magician of Chaos",
    "Skilled Dark Magician", "Breaker the Magical Warrior", "Tribe-Infecting Virus",
    "Sinister Serpent", "Morphing Jar",
    "Mirror Force", "Pot of Greed", "Change of Heart", "Monster Reborn",
    "Dark Hole", "Raigeki", "Harpie's Feather Duster", "Heavy Storm",
    "Mystical Space Typhoon", "Premature Burial"
  ),
  card_type = c(
    rep("Monster", 50),
    rep("Spell", 7),
    "Spell", "Spell", "Spell"
  ),
  attribute = c(
    "LIGHT", "DARK", "DARK", "DARK", "DARK", "EARTH", "DARK", "EARTH",
    "EARTH", "DARK", "DARK", "EARTH", "DIVINE", "DIVINE", "DIVINE",
    "DARK", "LIGHT", "DARK", "EARTH", "WIND", "WIND", "LIGHT", "DARK",
    "DARK", "DARK", "DARK", "WIND", "WIND", "WIND", "DARK", "EARTH",
    "FIRE", "EARTH", "EARTH", "EARTH", "LIGHT", "DARK", "DARK", "WIND",
    "LIGHT", "DARK", "EARTH", "DARK", "EARTH", "DARK", "DARK", "EARTH",
    "WATER", "WATER", "EARTH",
    rep(NA, 10)
  ),
  monster_type = c(
    "Dragon", "Spellcaster", "Spellcaster", "Dragon", "Fiend", "Warrior",
    "Fiend", "Beast-Warrior", "Warrior", "Dragon", "Spellcaster", "Warrior",
    "Fairy", "Divine-Beast", "Divine-Beast", "Fiend", "Spellcaster", "Illusion",
    "Insect", "Winged Beast", "Winged Beast", "Spellcaster", "Spellcaster",
    "Fiend", "Machine", "Machine", "Spellcaster", "Fiend", "Dragon", "Spellcaster",
    "Warrior", "Machine", "Warrior", "Insect", "Insect", "Spellcaster",
    "Spellcaster", "Fiend", "Winged Beast", "Fairy", "Zombie", "Plant",
    "Dragon", "Warrior", "Spellcaster", "Spellcaster", "Warrior", "Aqua",
    "Reptile", "Rock",
    rep(NA, 10)
  ),
  atk = c(
    3000, 2500, 1000, 2400, 2500, 1400, 300, 1200, 2300, 2000,
    2000, 2600, 4000, 4000, 4000, 600, 800, 1000, 450, 1300,
    1950, 300, 1100, 1000, 2400, 2600, 1900, 1800, 1900, 3000,
    3750, 2200, 2950, 2200, 3500, 0, 0, 2450, 200, 400,
    2000, 0, 3000, 3000, 2800, 1900, 1600, 2300, 300, 700,
    rep(NA, 10)
  ),
  def = c(
    2500, 2100, 1000, 2000, 1200, 1200, 200, 700, 2100, 1500,
    1700, 2300, 4000, 4000, 4000, 1900, 2000, 1800, 600, 1400,
    2600, 200, 1200, 600, 1500, 1900, 1600, 1500, 1600, 3000,
    3000, 2400, 2200, 2400, 3000, 4000, 0, 1600, 100, 300,
    2000, 0, 2500, 2500, 2600, 1400, 1000, 0, 300, 600,
    rep(NA, 10)
  ),
  level = c(
    8, 7, 3, 7, 6, 4, 1, 4, 7, 5,
    6, 7, 10, 10, 10, 3, 4, 4, 2, 4,
    6, 2, 4, 3, 6, 5, 4, 4, 4, 10,
    11, 5, 5, 7, 8, 1, 1, 6, 2, 3,
    6, 4, 8, 8, 8, 4, 4, 4, 1, 2,
    rep(NA, 10)
  ),
  rarity = c(
    "Ultra Rare", "Ultra Rare", "Ultra Rare", "Super Rare", "Rare",
    "Common", "Common", "Common", "Rare", "Rare",
    "Ultra Rare", "Ultra Rare", "Ultra Rare", "Ultra Rare", "Ultra Rare",
    "Common", "Common", "Common", "Common", "Rare",
    "Rare", "Common", "Rare", "Common", "Ultra Rare",
    "Rare", "Rare", "Common", "Common", "Ultra Rare",
    "Ultra Rare", "Rare", "Rare", "Rare", "Ultra Rare",
    "Ultra Rare", "Ultra Rare", "Ultra Rare", "Common", "Rare",
    "Rare", "Rare", "Ultra Rare", "Ultra Rare", "Ultra Rare",
    "Rare", "Rare", "Rare", "Common", "Rare",
    "Ultra Rare", "Ultra Rare", "Ultra Rare", "Ultra Rare", "Ultra Rare",
    "Ultra Rare", "Ultra Rare", "Rare", "Common", "Rare"
  ),
  power_rating = c(
    5, 5, 5, 4, 4, 2, 1, 1, 3, 3,
    4, 4, 5, 5, 5, 1, 2, 2, 2, 3,
    3, 2, 3, 2, 4, 4, 3, 3, 3, 5,
    5, 3, 4, 4, 5, 4, 4, 5, 4, 4,
    4, 3, 5, 5, 5, 3, 4, 4, 1, 3,
    5, 5, 5, 5, 5, 5, 5, 4, 3, 4
  ),
  is_banned = c(
    FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
    FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
    FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
    FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE,
    FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE,
    FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE
  ),
  stringsAsFactors = FALSE
)

usethis::use_data(yugioh_cards, overwrite = TRUE)
