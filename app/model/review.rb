class Review < ActiveRecord::Base
    belongs_to :owner
    belongs_to :video_game
end