@user = User.create(email: "jchristopher.cato@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow")
puts "1 user createed"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin", last_name: "Name")

puts "1 Admin User createed"

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"