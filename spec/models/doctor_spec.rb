require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe "#validations" do
    it 'should test for a valid factory' do
      expect(build(:doctor)).to be_valid
    end
    
    it 'should validate the presence of name' do
      doctor = build(:doctor, name: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:name]).to include("can't be blank")
    end
    
    it 'should validate the presence of category' do
      doctor = build(:doctor, category: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:category]).to include("can't be blank")
    end
    
    it 'should validate the presence of description' do
      doctor = build(:doctor, description: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:description]).to include("can't be blank")
    end
    
    it 'should validate the presence of fee' do
      doctor = build(:doctor, fee: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:fee]).to include("can't be blank")
    end
    
    it 'should validate the presence of exp' do
      doctor = build(:doctor, exp: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:exp]).to include("can't be blank")
    end
    
    it 'should validate the presence of likes' do
      doctor = build(:doctor, likes: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:likes]).to include("can't be blank")
    end
    
    it 'should validate the presence of phone' do
      doctor = build(:doctor, phone: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:phone]).to include("can't be blank")
    end
    
    it 'should validate the presence of address' do
      doctor = build(:doctor, address: '')
      expect(doctor).not_to be_valid
      expect(doctor.errors.messages[:address]).to include("can't be blank")
    end
  end
  
end