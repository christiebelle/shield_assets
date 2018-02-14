require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/Hero")
require_relative("./models/Squad")

get "/" do
  erb(:home)
end

get "/heroes" do
  @heroes = Hero.all()
  erb(:index)
end

get "/heroes/new" do
  @squads = Squad.all()
  erb(:new)
end

post "/heroes/new" do
  new_hero = Hero.new(params)
  new_hero.save()
  redirect to "/heroes"
end

get "/squads" do
  @squads = Squad.all()
  erb(:squad_index)
end

get "/squads/new" do
  erb(:squad_new)
end

post "/squads/new" do
  new_squad = Squad.new(params)
  new_squad.save()
  redirect to "/squads"
end
