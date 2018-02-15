require("pry-byebug")

require_relative("../models/Hero")
require_relative("../models/Squad")
require_relative("../models/Villain")

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

suicide = Squad.new({
  "name" => "Suicide Squad",
  "logo_url" => "https://d1x7zurbps6occ.cloudfront.net/logo/crop/logo-brand-suicide-squad.png"
})
suicide.save()

worldkiller = Squad.new({
  "name" => "World Killers",
  "logo_url" => "http://vignette2.wikia.nocookie.net/smallville/images/a/a8/Kryptonian_symbol_for_Doomsday.jpg/revision/latest?cb=20110222222649"
})
worldkiller.save()

hive = Squad.new({
  "name" => "H.I.V.E",
  "logo_url" => "https://www.cgccomics.com/boards/applications/core/interface/imageproxy/imageproxy.php?img=http://images.wikia.com/dcuo/images/9/98/LogoHIVE.jpg&key=db04544097eda5978fc9e100a8a53dd541991d4ab5a9361dc74d64c6efb5b7f4"
})
hive.save()

lot = Squad.new({
  "name" => "Legends of Tomorrow",
  "logo_url" => "https://ih1.redbubble.net/image.151256478.8857/flat,800x800,075,f.jpg"
})
lot.save()

flash = Squad.new({
  "name" => "Team Flash",
  "logo_url" => "https://images-na.ssl-images-amazon.com/images/I/41NKQeIxb%2BL._SL500_AC_SS350_.jpg"
})
flash.save()

supergirl = Hero.new({
    "name" => "SuperGirl",
    "secret_identity" => "Kara Danvers",
    "skill" => "strength",
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

black_canary = Hero.new({
  "name" => "Black Canary",
  "secret_identity" => "Sara Lance",
  "skill" => "assassin",
  "squad_id" => lot.id
})
black_canary.save()

overwatch = Hero.new({
  "name" => "Overwatch",
  "secret_identity" => "Felicity Smoak",
  "skill" => "computer science",
  "squad_id" => ota.id
})
overwatch.save()

killer_frost = Hero.new({
  "name" => "Killer Frost",
  "secret_identity" => "Dr Caitlin Snow",
  "skill" => "cold powers",
  "squad_id" => flash.id
})
killer_frost.save()

talia = Villain.new({
  "name" => "Talia Al Ghul",
  "evil_identity" => "Talia Raatko",
  "skill" => "martial arts",
  "squad_id" => assassins.id
})
talia.save()

reign = Villain.new({
  "name" => "Reign",
  "evil_identity" => "Sam Arias",
  "skill" => "strength",
  "squad_id" => worldkiller.id
})
reign.save()

quinn = Villain.new({
  "name" => "Harley Quinn",
  "evil_identity" => "Dr Harleen Quinzel",
  "skill" => "enhanced physiology",
  "squad_id" => suicide.id
})
quinn.save()

kane = Villain.new({
  "name" => "Adeline Kane",
  "evil_identity" => "Adeline Wilson",
  "skill" => "tactician",
  "squad_id" => hive.id
})
kane.save()



binding.pry
nil
