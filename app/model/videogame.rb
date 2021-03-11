class VideoGame < ActiveRecord::Base
    has_many :reviews
    has_many :owners, through: :reviews

end