require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#validations" do
    it 'should create valid factory' do
      user = build :user
      expect(user).to be_valid
    end
    
    it 'should validate presence of attributes' do
      user = build :user, name: nil, email: ''
      expect(user).to not_be_valid
      expect(user.error.messages[:name]).to include("can't be blank")
      expect(user.error.messages[:email]).to include("can't be blank")
    end
    
    it 'should check uniqueness of the email' do
      user = create :user
      other_user = create :user, email: user.email
      expect(other_user).not_to be valid
      other_user.email = 'newlogin@gmail.com'
      expect(other_user).to be_valid
    end
    
  end
end
