class CreateRatingtimes < ActiveRecord::Migration
  def change
    create_table :ratingtimes do |t|
      t.float :rating
      t.date :date
      t.belongs_to :word
      
      t.timestamps
    end
  end
end
