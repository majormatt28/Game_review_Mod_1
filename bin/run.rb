require_relative '../config/environment'
require 'pry'



def the_directory
    prompt = TTY::Prompt.new
    prompt.select "Directory" do |menu|
        menu.choice "Genres", -> {genres}
        menu.choice "Profiles", -> {profiles}
        menu.choice "Exit to Main Menu", -> {welcome_screen}
        
    end
end

def login_helper
    puts "Welcome Back!"
    owner_confirmation = Owner.login_helper_method
    if owner_confirmation
        the_directory()
    else
        welcome_screen()
    end
end


def sign_up_helper
    puts "You've chosen wisely!"
    owner = Owner.sign_up_helper_method
    welcome_screen()
end

def exit_helper
    puts "Smell ya later!"
    puts "run"
end

#def favorite_helper_method
    #puts "It's been added!"

    #binding.pry
#end

def delete_method
    
end

#def change_password_method
    #puts "this works too"
#end


def persona_five
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to RPG", -> {rpg_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def the_witcher
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to RPG", -> {rpg_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def diablo
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to RPG", -> {rpg_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def nba_live
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Sports", -> {sports_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def madden
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Sports", -> {sports_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def fifa
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Sports", -> {sports_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def xcom
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Strategy", -> {strategy_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def humankind
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Strategy", -> {strategy_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

def stellaris
    prompt = TTY::Prompt.new
    prompt.select "Add to Favorites?" do |menu|
        menu.choice "Add", -> {favorite_helper_method}
        menu.choice "Back to Strategy", -> {strategy_genre}
        menu.choice "Exit to Genres", -> {genres}
    end
end

# prompt = TTY::Prompt.new

def welcome_screen
    prompt = TTY::Prompt.new
    puts "Welcome to Gamer's Paradise"
    puts "You can Sign-up or Login now to enjoy a selction of games."  
    prompt.select "Sign-up! or Login!" do |menu|
        menu.choice "Login", -> {login_helper}
        menu.choice "Sign-up", -> {sign_up_helper}
        menu.choice "Exit", -> {exit_helper}
    end
end

def genres
    prompt = TTY::Prompt.new
puts "Pick of the Liter"
     prompt.select "Pick a Genre" do |menu|
        menu.choice "RPG", -> {rpg_genre}
        menu.choice "Sports", -> {sports_genre}
        menu.choice "Strategy", -> {strategy_genre}
        menu.choice "Exit to Directory", -> {the_directory}
    end
 end

 def rpg_genre
    prompt = TTY::Prompt.new
    puts "Pew Pew"
prompt.select "Pick a RPG Game" do |menu|
    menu.choice "Persona Five", -> {persona_five}
    menu.choice "The Witcher", -> {the_witcher}
    menu.choice "Diablo", -> {diablo}
    menu.choice "Exit to Genres", -> {genres}
end
 end

 def sports_genre
    prompt = TTY::Prompt.new
    puts "Ball Out"
    prompt.select "Pick a Sports Game" do |menu|
    menu.choice "NBA LIVE", -> {nba_live}
    menu.choice "Madden", -> {madden}
    menu.choice "FIFA", -> {fifa}
    menu.choice "Exit to Genres", -> {genres}
 end  
 end

 def strategy_genre
    prompt = TTY::Prompt.new
    puts "Stay Woke"
    prompt.select "Pick a Strategy Game" do |menu|
        menu.choice "XCOM", -> {xcom}
        menu.choice "Humankind", -> {humankind}
        menu.choice "Stellaris", -> {stellaris}
        menu.choice "Exit to Genres", -> {genres}
    end
 end

 def profiles
    prompt = TTY::Prompt.new
     puts "inside profiles"
     prompt.select "What would you like to do?" do |menu|
        menu.choice "Delete User Info", -> {delete_helper_method}
        #menu.choice "Change Password", -> {change_password_method}
        menu.choice "Favorites", -> {favorite_helper_method}
        menu.choice "Exit to Directory", -> {the_directory}
     end
 end
# welcome = WelcomeInterface.new 
# welcome.run
welcome_screen()
puts "end of Welcome Screen \n \n"

