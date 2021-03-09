class Owner < ActiveRecord::Base
    has_many :reviews
    has_many :video_games, through: :reviews

    def login_helper_method
        puts "This you?"
        username = STDIN.gets.chomp
        puts "You sure?"
        password = STDIN.gets.chomp
        
    end

    def sign_up_helper_method
        puts "What is your chosen username?"
        username = STDIN.gets.chomp

    end
end