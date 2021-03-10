class VideoGame < ActiveRecord::Base
    has_many :reviews
    has_many :owners, through: :reviews

    def self.game_genres
        self.all.uniq.sort.map{|games| games.genre}.uniq.sort
    end

    def self.games_in_genre(genre_name)
        Game.all.select {|game| game.genre == genre_name}.uniq.sort
    end

    def self.game_info
        Game.all.map do |game|
            binding.pry
        end
    end
end