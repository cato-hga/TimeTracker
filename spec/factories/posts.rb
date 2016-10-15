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

  