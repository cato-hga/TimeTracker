100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rational conten")
end
puts "100 posts have been created"