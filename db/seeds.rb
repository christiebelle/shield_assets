require("pry-byebug")

require_relative("../models/Hero")
require_relative("../models/Squad")

Hero.delete_all()
Squad.delete_all()

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

avengers = Squad.new({
  "name" => "The Avengers",
  "logo_url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Symbol_from_Marvel%27s_The_Avengers_logo.svg/2000px-Symbol_from_Marvel%27s_The_Avengers_logo.svg.png"
})

avengers.save()

binding.pry
nil
