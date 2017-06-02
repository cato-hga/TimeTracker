@user = User.create(email: "jchristopher.cato@gmail.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "John", 
					last_name: "Snow",
					phone: "8138422213")
puts "1 user createed"

AdminUser.create(email: "admin@test.com", 
				 password: "asdfasdf", 
				 password_confirmation: "asdfasdf", 
				 first_name: "Admin", 
				 last_name: "Name",
				 phone: "8138422213")

puts "1 Admin User created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: Date.today - 6.days)
AuditLog.create!(user_id: @user.id, status: 0, start_date: Date.today - 13.days)
AuditLog.create!(user_id: @user.id, status: 0, start_date: Date.today - 20.days)


puts "3 audit logs have been created"

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. ", user_id: @user.id, overtime_request: 2.5)
end
puts "100 posts have been created"


