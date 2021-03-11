require_relative '../config/environment'
require 'pry'

#global area

def the_directory(user)
    system 'clear'
    #local area - state
    prompt = TTY::Prompt.new
    prompt.select "Directory" do |menu|
        menu.choice "Genres", -> {genres(user)}
        menu.choice "Profiles", -> {profiles(user)}
        menu.choice "Exit to Main Menu", -> {welcome_screen}
    end
end

#this area

def login_helper
    puts "Welcome Back!"
    owner_confirmation = Owner.login_helper_method
   
    if owner_confirmation[0]
        the_directory(owner_confirmation[1])
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
    puts ""
end

def delete_method
   puts "delete"
end

def welcome_screen
    prompt = TTY::Prompt.new
    puts "Welcome to Gamer's Paradise
                             .                                               
                     /   ))     |\         )               ).           
               c--. (\  ( `.    / )  (\   ( `.     ).     ( (           
               | |   ))  ) )   ( (   `.`.  ) )    ( (      ) )          
               | |  ( ( / _..----.._  ) | ( ( _..----.._  ( (           
 ,-.           | |---) V.'-------.. `-. )-/.-' ..------ `--) \._        
 | /===========| |  (   |      ) ( ``-.`\/'.-''           (   ) ``-._   
 | | / / / / / | |--------------------->  <-------------------------_>=-
 | /===========| |                 ..-'./\.`-..                _,,-'    
 `-'           | |-------._------''_.-'----`-._``------_.-----'         
               | |         ``----''            ``----''                  
               | |                                                       
               c--`        ".colorize(:red)                                
    puts "You can Sign-up or Login now to enjoy a selction of games."  
    prompt.select "Sign-up! or Login!" do |menu|
        menu.choice "Login", -> {login_helper}
        menu.choice "Sign-up", -> {sign_up_helper}
        menu.choice "Exit", -> {exit_helper}
    end
end

def genres(user)
    system 'clear'
    prompt = TTY::Prompt.new
    puts "Pick of the Liter"
     prompt.select "Pick a Genre" do |menu|
        menu.choice "RPG", -> {rpg_genre(user)}
        menu.choice "Sports", -> {sports_genre(user)}
        menu.choice "Strategy", -> {strategy_genre(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
    end
 end

 def rpg_genre(user)
    system 'clear'
    prompt = TTY::Prompt.new
    puts "Honor or Death!"
    prompt.select "Pick a RPG Game" do |menu|
        rpg_list = VideoGame.where(genre: "RPG")
        rpg_list.each do |rpg|
            menu.choice rpg.title, -> {picked_game(rpg, user)}
        end
     menu.choice "Exit to Genres", -> {genres(user)}
    end
 end

 def picked_game(game, user)
    #this is for a single game
    #only accepts video game instances
    prompt = TTY::Prompt.new
    prompt.select "#{game.title}" do |menu|
        menu.choice "Add a Review", -> {add_review(game, user)}
        menu.choice "See Reviews", -> {see_reviews(game, user)}
        # menu.choice "Back to RPG", -> {rpg_genre}
        menu.choice "Exit to Genres", -> {genres(user)}
    end
 end
#picked_game is dynamic he dont care

 def add_review(game, user)
    #how to create in active record
    # puts "What's your username?"
    # username = STDIN.gets.chomp
    # owner_inst = Owner.find_by(name: username)
    puts "Tell me how you really feel"
    comment = STDIN.gets.chomp
    puts "What's that score?"
    score = STDIN.gets.chomp
    #all above fills into a review
    Review.create(owner_id: user.id, video_game_id: game.id, score: score, comment: comment)
    #made global variable to use current_user.id 
    see_reviews(game, user)
    #confirms that it was made
 end
 #add_reviews also dynamic ..the beauty of passing through

 def see_reviews(game, user)
    #how to read from active record
    # multiple reviews 
    puts ""
    puts "IT'S ALL CAP!"
    puts ""
    # review_list = Review.where(video_game_id: game.id)
    #game.reviews works as well because of ActiveRecord
    game.reviews.each do |review|
        #binding.pry
        puts "#{review.owner.name} says: #{review.comment}"
        puts "score: #{review.score}"
        puts ""
        #puts cursor on new line similar to \n
    end
    prompt = TTY::Prompt.new
    prompt.select "#{game.title}" do |menu|
        menu.choice "Exit to Genres", -> {genres(user)}
    end
 end
 #also dynamic ..the beauty of passing through

 def sports_genre(user)
    system 'clear'
    prompt = TTY::Prompt.new
    puts "BIG BALLER BRAND"
    prompt.select "Pick a Sports Game" do |menu|
        sport_list = VideoGame.where(genre: "Sport")
        sport_list.each do |sport|
            menu.choice sport.title, -> {picked_game(sport, user)}
        end

        menu.choice "Exit to Genres", -> {genres(user)}
    end 
 end

 def strategy_genre(user)
    system 'clear'
    prompt = TTY::Prompt.new
    puts "Stay Woke"
    prompt.select "Pick a Strategy Game" do |menu|
        strategy_list = VideoGame.where(genre: "Strategy")
        strategy_list.each do |strategy|
            menu.choice strategy.title, -> {picked_game(strategy, user)}
            end

        menu.choice "Exit to Genres", -> {genres(user)}
        end 
        # menu.choice "XCOM", -> {xcom}
        # menu.choice "Humankind", -> {humankind}
        # menu.choice "Stellaris", -> {stellaris}
        # menu.choice "Exit to Genres", -> {genres(user)}
    end
 

 def profiles(user)
    prompt = TTY::Prompt.new
     puts "inside profiles"
     prompt.select "What would you like to do?" do |menu|
        menu.choice "Delete User Info", -> {delete_helper_method(user)}
        menu.choice "Display User", -> {display_owner_method(user)}
        # menu.choice "Favorites", -> {favorite_helper_method}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end

 def display_owner_method(user)
#print out owner name : user.name
#print out owner name : user.password
    puts ""
    puts "username: #{user.name}"
    puts "password: #{user.password}"
    puts ""
# again "" adds space similar to \n \n
    prompt = TTY::Prompt.new
    prompt.select "What would you like to do?" do |menu|
        menu.choice "change username", -> {update_helper(user, "username")}
        menu.choice "change password", -> {update_helper(user, "password")}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end
 

 def update_helper(user, options)
    #how to update the active record
    if(options == "username")
        puts "What's your new username?"
        username = STDIN.gets.chomp
        user.update(name: username)
    else
        puts "What's your new password ?"
        password = STDIN.gets.chomp
        user.update(password: password)
    end
    puts ""
    prompt = TTY::Prompt.new
    prompt.select "What would you like to do?" do |menu|
        # menu.choice "Delete", -> {delete_helper_method(user)}
        # menu.choice "", -> {display_dispaly_method(user)}
        menu.choice "Display User", -> {display_owner_method(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end


 def delete_helper_method(user)
    puts "would you like to delete your account ???????"
    
    prompt = TTY::Prompt.new
    prompt.select "What would you like to do?" do |menu|
        menu.choice "yes", -> {deleteUser(user)}
        menu.choice "no", -> {display_owner_method(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
    end
end

def deleteUser(user)
    #how to delete from active record
    user.destroy
    welcome_screen()
 end

welcome_screen()





# create: create 
# read : find_by, where, find,
# update: update
# delete: destroy