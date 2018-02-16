require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/Hero")
require_relative("./models/Squad")
require_relative("./models/Villain")

get "/" do
  erb(:home)
end

get "/about" do
  erb(:about)
end

get "/heroes" do
  @heroes = Hero.all()
  erb(:index)
end

get "/villains" do
  @villains = Villain.all()
  erb(:villain_index)
end

get "/heroes/new" do
  @squads = Squad.all()
  erb(:new)
end

get "/villains/new" do
  @squads = Squad.all()
  erb(:villain_new)
end

post "/heroes/new" do
  new_hero = Hero.new(params)
  new_hero.save()
  redirect to "/heroes"
end

post "/villains/new" do
  new_villain = Villain.new(params)
  new_villain.save()
  redirect to "/villains"
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

get "/login" do
  erb(:login)
end

get "/contact" do
  erb(:contact)
end

get "/jobs" do
  erb(:jobs)
end
