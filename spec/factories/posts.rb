# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  date       :date
#  rationale  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  status     :integer          default(0)
#

FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Rationale"
    user
  end
  factory :second_post, class: "Post" do
    date Date.today
    rationale "Some more content"
    user
  end	
  
end

  
