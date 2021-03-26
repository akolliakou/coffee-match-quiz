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
get "/quiz" do
  erb :quiz
end
