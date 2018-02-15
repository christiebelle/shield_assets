require("pry-byebug")

require_relative("../models/Hero")
require_relative("../models/Squad")

Hero.delete_all()
Squad.delete_all()

assassins = Squad.new({
  "name" => "The League of Assassins",
  "logo_url" => "https://vignette.wikia.nocookie.net/arkhamcity/images/8/8a/LoASymbol.png/revision/latest?cb=20150714165508"
})
assassins.save()

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

ota = Squad.new({
  "name" => "Original Team Arrow",
  "logo_url" => "http://images6.fanpop.com/image/photos/36700000/Arrow-CW-image-arrow-cw-36717403-379-500.png"
})
ota.save()

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

nyssa = Hero.new({
  "name" => "Warith Al Ghul",
  "secret_identity" => "Nyssa Raatko",
  "skill" => "ninja",
  "squad_id" => assassins.id
})
nyssa.save()



binding.pry
nil
