require_relative("../models/Hero")

supergirl = Hero.new({
    "name" => "SuperGirl",
    "secret_identity" => "Kara Danvers",
    "skill" => "flight"
})

wonder_woman = Hero.new({
  "name" => "Wonder Woman",
  "secret_identity" => "Diana Prince",
  "skill" => "combat",
  "squad" => "Justice League"
})

black_widow = Hero.new({
  "name" => "Black Widow",
  "secret_identity" => "Natasha Romanov",
  "skill" => "espionage",
  "squad" => "Avengers"
})
