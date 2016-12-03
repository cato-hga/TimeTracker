# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  date             :date
#  rationale        :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  status           :integer          default(0)
#  overtime_request :decimal(, )      default(0.0)
#

FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Rationale"
    overtime_request 3.5
    user
  end
  factory :second_post, class: "Post" do
    date Date.today
    rationale "Some more content"
    overtime_request 0.5
    user
  end	
end

  
