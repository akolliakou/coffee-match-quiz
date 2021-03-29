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
  @choices = ["warm", "cold"]

  erb :quiz
end

post "/weather/warm" do
  @current_path = request.path

  @question = "Is it the morning?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/warm/no" do
  @current_path = request.path

  @question = "Are you at home or out?"
  @choices = ["home", "out"]

  erb :quiz
end


post "/weather/warm/no/home" do
  @current_path = request.path

  @question = "Are you fussy?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/warm/no/home/yes" do
  @completed = true
  @image = "/mocha.jpg"

  @current_path = request.path

  @coffee_match = "Treat yourself to a nice home-made Mocha!"

  erb :quiz
end

post "/weather/warm/no/home/no" do
  @completed = true
  @image = "/instant_coffee.jpg"

  @current_path = request.path

  @coffee_match = "Make yourself a quick Instant Coffee!"

  erb :quiz
end

post "/weather/warm/no/out" do
  @completed = true
  @image = "/irish_coffee.jpeg"

  @current_path = request.path

  @coffee_match = "Irish Coffee with an extra shot STAT!"

  erb :quiz
end


post "/weather/warm/yes" do
  @current_path = request.path

  @question = "Are you yawning?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/warm/yes/yes" do
  @current_path = request.path

  @question = "Is this because you have children, had a wild night or have been to the gym?"
  @choices = ["children", "wild night", "gym"]

  erb :quiz
end

post "/weather/warm/yes/yes/children" do
  @completed = true
  @image = "/latte.jpg"

  @current_path = request.path

  @coffee_match = "Sounds like you need a nice warm Latte!"

  erb :quiz
end

post "/weather/warm/yes/yes/wildnight" do
  @completed = true
  @image = "/double_espresso.jpg"

  @current_path = request.path

  @coffee_match = "Ouch! Get that Double Espresso on!"

  erb :quiz
end

post "/weather/warm/yes/yes/gym" do
  @completed = true
  @image = "/iced_coffee.jpg"

  @current_path = request.path

  @coffee_match = "I think an Iced Coffee will hit the spot!"

  erb :quiz
end

post "/weather/warm/yes/no" do
  @current_path = request.path

  @question = "Are you taking it away or drinking it at home?"
  @choices = ["take away", "home"]

  erb :quiz
end

post "/weather/warm/yes/no/takeaway" do
  @completed = true
  @image = "/cappuccino.jpg"

  @current_path = request.path

  @coffee_match = "How about an old-trusted Cappuccino?"

  erb :quiz
end

post "/weather/warm/yes/no/home" do
  @completed = true
  @image = "/americano_milk.jpg"
  @current_path = request.path

  @coffee_match = "Americano with a splash of milk, it is!"

  erb :quiz
end

post "/weather/cold" do
  @current_path = request.path

  @question = "Is it the morning?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/cold/no" do
  @current_path = request.path

  @question = "Are you alone or with company?"
  @choices = ["alone", "with company"]

  erb :quiz
end

post "/weather/cold/no/withcompany" do
  @completed = true
  @image = "/espresso.jpg"

  @current_path = request.path

  @coffee_match = "Make it short with an Espresso!"

  erb :quiz
end

post "/weather/cold/no/alone" do
  @completed = true
  @image = "/chai_latte.jpg"

  @current_path = request.path

  @coffee_match = "Time to relax with a warming Chai Latte!"

  erb :quiz
end

post "/weather/cold/yes" do
  @current_path = request.path

  @question = "Are you at work or have a day off?"
  @choices = ["day off", "work"]

  erb :quiz
end

post "/weather/cold/yes/dayoff" do
  @current_path = request.path

  @question = "Are you having a lazy one?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/cold/yes/dayoff/yes" do
  @completed = true
  @image = "/macchiato.jpg"

  @current_path = request.path

  @coffee_match = "I guess a Macchiato wouldn't hurt!"

  erb :quiz
end

post "/weather/cold/yes/dayoff/no" do
  @completed = true

  @current_path = request.path

  @coffee_match = "Pick yourself up with a Hazelnut Coffee!"

  erb :quiz
end

post "/weather/cold/yes/work" do
  @current_path = request.path

  @question = "Casual dress?"
  @choices = ["yes", "no"]

  erb :quiz
end

post "/weather/cold/yes/work/yes" do
  @completed = true

  @current_path = request.path

  @coffee_match = "Whip up that Cortado!"

  erb :quiz
end

post "/weather/cold/yes/work/no" do
  @completed = true

  @current_path = request.path

  @coffee_match = "A cup of good, hot, black Americano!"

  erb :quiz
end


