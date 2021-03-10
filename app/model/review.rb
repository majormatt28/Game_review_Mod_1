class Review < ActiveRecord::Base
    belongs_to :owner
    belongs_to :video_game

    def add_rating_method
        #rating = (1...5)
        #if rating > 0
            #rating == 1
        #elsif rating > 1
            #rating == 2
        #elsif rating > 2
            #rating == 3
        #elsif rating > 3
            #rating == 4
            #elsif rating > 4
                #rating == 5
            #end
            #rating
        #end
    end
end