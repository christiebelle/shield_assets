require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/Hero")

get "/heroes" do
  @heroes = Hero.all()
  erb(:index)
end

get "/heroes/new" do
  erb(:new)
end

post "/heroes/new" do
  new_hero = Hero.new(params)
  new_hero.save()
  redirect to "/heroes"
end
