@user = User.create(email: "jchristopher.cato@gmail.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "John", 
					last_name: "Snow",
					phone: "8133815412 ")
puts "1 user createed"

AdminUser.create(email: "admin@test.com", 
				 password: "asdfasdf", 
				 password_confirmation: "asdfasdf", 
				 first_name: "Admin", 
				 last_name: "Name",
				 phone: "8133815412 ")

puts "1 Admin User createed"

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"