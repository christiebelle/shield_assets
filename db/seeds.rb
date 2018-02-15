require("pry-byebug")

require_relative("../models/Hero")
require_relative("../models/Squad")

Hero.delete_all()
Squad.delete_all()

avengers = Squad.new({
  "name" => "The Avengers",
  "logo_url" => "http://thriftyzone.thriftysigns.netdna-cdn.com/image/cache/data/decals/movies-tv/avengers-logo-decal-sticker-avengers-logo-500x500.png"
})
avengers.save()

legion = Squad.new({
  "name" => "The Legion of Superheroes",
  "logo_url" => "https://vignette.wikia.nocookie.net/supermanrebirth/images/c/c5/Legion_of_Super_Heroes_vol_1_logo.png/revision/latest?cb=20120411212825"
})
legion.save()

jla = Squad.new({
  "name" => "Justice League of America",
  "logo_url" => "http://media.comicbook.com/2016/06/30901511-max-186685.jpg"
})
jla.save()

supergirl = Hero.new({
    "name" => "SuperGirl",
    "secret_identity" => "Kara Danvers",
    "skill" => "flight",
    "squad_id" => legion.id
})
supergirl.save()

wonder_woman = Hero.new({
  "name" => "Wonder Woman",
  "secret_identity" => "Diana Prince",
  "skill" => "combat",
  "squad_id" => jla.id
})
wonder_woman.save()

black_widow = Hero.new({
  "name" => "Black Widow",
  "secret_identity" => "Natasha Romanov",
  "skill" => "espionage",
  "squad_id" => avengers.id
})
black_widow.save()



binding.pry
nil
