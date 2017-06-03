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

class Post < ActiveRecord::Base
	enum status: {submitted: 0, approved: 1, rejected: 2}
	belongs_to :user
	validates_presence_of :date, :rationale, :overtime_request
	validates :overtime_request, numericality: { greater_than: 0.0 }

	scope :posts_by, ->(user) {where(user_id: user.id)}

  after_save :update_audit_log
  private

  def update_audit_log
    audit_log = AuditLog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
    if audit_log.present?
      audit_log.confirmed!
    end  
  end
end

