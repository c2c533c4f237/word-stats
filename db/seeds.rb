require 'json'

File.open("#{Rails.root}/data-dump/facebook-super-short.json", "r").each_line do |line|
	blob = JSON.parse(line)
	words = blob['title'].downcase.scan(/\w+/) + blob['review_text'].downcase.scan(/\w+/)
	words = words.uniq
	words.each do |token|
		existing_word = Word.where(text: token).first
		if existing_word
			word = existing_word
		else
			word = Word.new(text: token)
		end
		rating_time = Ratingtime.new( rating: blob['rating'].to_f, date: Date.parse(blob['date']) )
		word.ratingtimes << rating_time
		word.save!
	end
end