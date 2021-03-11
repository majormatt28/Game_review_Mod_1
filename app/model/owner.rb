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
        #binding.pry
        if owner_inst == nil
            puts "Try Again"
            return [false, owner_inst]
        else 
            puts "Successful Login"
            return [true, owner_inst]
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

    #def display_owner_method
        #owner = Owner.find_by(owner_id)
    #end

end

