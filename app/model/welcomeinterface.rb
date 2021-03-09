class WelcomeInterface
    attr_accessor :owner
    attr_reader :prompt

    def initialize
        @prompt = TTY::Prompt.new
    end

    def welcome_interface
        puts "Welcome to Gamer's Paradise"
        puts "You can Sign-up or Login now to enjoy a selction of games."
    end

    def requesting_for_login_or_register
        prompt.select "Sign-up! or Login!" do |menu|
            menu.choice "Login", -> {login_helper}
            menu.choice "Sign-up", -> {sign_up_helper}
            menu.choice "Exit", -> {exit_helper}
        end
    end

    def login_helper
        puts "Welcome Back!"
        @owner = Owner.login_helper_method
    end
    
    def sign_up_helper
        puts "You've chosen wisely!"
        @owner = Owner.sign_up_helper_method
    end

    def exit_helper
        puts "Smell ya later!"
    end

    def directory
        
    end


    def run
        welcome_interface
        requesting_for_login_or_register
        directory
    end

end