# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  first_name             :string
#  last_name              :string
#  type                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  before do
 	@user = User.create(email: "jchristopher.cato@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow")
  end
  describe "creation" do
	it "can be created" do
	  expect(@user).to be_valid
	end

	it "cannot be created without first_name, last_name" do
	  @user.first_name = nil
	  @user.last_name = nil
	  expect(@user).to_not be_valid
	end
  end
  describe "custom name methods" do
    it "has a full name method that combines first and last name" do
 	  expect(@user.full_name).to eq("SNOW, JOHN")
    end
  end
end

