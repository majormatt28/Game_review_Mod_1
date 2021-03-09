class CreateVideoGames < ActiveRecord::Migration[6.1]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :genre
      t.string :rating
    end
  end
end
