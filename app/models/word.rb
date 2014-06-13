class Word < ActiveRecord::Base
	has_many :ratingtimes
	default_scope { order('ratingtimes_count DESC') }
end
