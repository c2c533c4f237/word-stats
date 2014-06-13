class Ratingtime < ActiveRecord::Base
	belongs_to :word, :counter_cache => true  
end
