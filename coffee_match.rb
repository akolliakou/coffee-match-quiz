require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "bcrypt"

configure do 
  enable :sessions
  set :session_secret, 'secret'
end

get "/" do
  erb :home
end

# First quiz page
get "/weather" do
  @current_path = request.path
  @question = "First things, first! Is it warm or cold outside?"
  @choices = ["Warm", "Cold"]
  erb :quiz
end

post "/weather/warm" do
  
end

