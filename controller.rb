require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/Hero")

get "/heroes" do
  @heroes = Hero.all()
  erb(:index)
end
