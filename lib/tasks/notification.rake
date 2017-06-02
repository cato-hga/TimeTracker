namespace :notification do
  desc "Send SMS notifcation to employees asking them to log if they had overtime or not."
  task sms: :environment do
  	# 1. Schedule Sunday at 5pm
  	# 2. Iterate over all employees
  	# 3. Skip AdminUsers
  	# 4. Send a message that has instructions and a link to logtime
  	# User.all.each do |user|

  	# end
  	# number: "813-213-4454"
  	# number: "8132134454"
  	# No spaces or dashes
  	# Exactly 10 characters
  	# All characters have to be a number

  end

  desc "Send mail notifcation to managers (admin users) each to inform them of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end
