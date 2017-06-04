namespace :notification do
  desc "Send SMS notifcation to employees asking them to log if they had overtime or not."
  task sms: :environment do # To create a schedule with Heroku run this command in terminal: heroku addons:create scheduler:standard
    if Time.now.sunday?
      employees = Employee.all
      # 4. Send a message that has instructions and a link to logtime
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https:///time-tracker813.herokuapp.com"
      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
      # number: "813-213-4454"
      # number: "8132134454"
      # No spaces or dashes
      # Exactly 10 characters
      # All characters have to be a number
    end
  	
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
