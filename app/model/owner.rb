require 'pry'

class Owner < ActiveRecord::Base
    has_many :reviews
    has_many :video_games, through: :reviews

    def self.login_helper_method
        puts "This you?"
        owner = STDIN.gets.chomp
        puts "You sure?"
        #binding.pry
        password = STDIN.gets.chomp
        owner_inst = Owner.find_by(name: owner, password: password)

        if owner == owner_inst.name
            puts "Successful Login"
            return true
        else 
            puts "Try Again"
            return false
        end 
    end

    def self.sign_up_helper_method
        puts "What is your chosen username?"
        owner = STDIN.gets.chomp
        puts "What password do you desire?"
        password = STDIN.gets.chomp
        owner_inst = Owner.create(name: owner, password: password)
        puts "Welcome Fam!"
    end

    def delete_helper_method

    end

    def change_password_method
        puts "this works too"
    end
    
    def favorite_helper_method
        puts "It's been added!"
    end

end

