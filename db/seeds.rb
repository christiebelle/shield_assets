require_relative("../models/Hero")

Hero.delete_all()

supergirl = Hero.new({
    "name" => "SuperGirl",
    "secret_identity" => "Kara Danvers",
    "skill" => "flight"
})

supergirl.save()

wonder_woman = Hero.new({
  "name" => "Wonder Woman",
  "secret_identity" => "Diana Prince",
  "skill" => "combat",
  "squad" => "Justice League"
})

wonder_woman.save()

black_widow = Hero.new({
  "name" => "Black Widow",
  "secret_identity" => "Natasha Romanov",
  "skill" => "espionage",
  "squad" => "Avengers"
})

black_widow.save()
