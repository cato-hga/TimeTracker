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

class Post < ActiveRecord::Base
	enum status: {submitted: 0, approved: 1, rejected: 2}
	belongs_to :user
	validates_presence_of :date, :rationale, :overtime_request
	validates :overtime_request, numericality: { greater_than: 0.0 }

	scope :posts_by, ->(user) {where(user_id: user.id)}
end

