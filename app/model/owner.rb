class Owner < ActiveRecord::Base
    has_many :reviews
    has_many :video_games, through: :reviews
end