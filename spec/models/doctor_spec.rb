require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'should test for a valid factory' do
    expect(FactoryBot.build :doctor).to be_valid
  end
  
  it 'should validate the presence of name' do
    doctor = FactoryBot.build(:doctor, name: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:name]).to include("can't be blank")
  end
  
  it 'should validate the presence of category' do
    doctor = FactoryBot.build(:doctor, category: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:category]).to include("can't be blank")
  end
  
  it 'should validate the presence of description' do
    doctor = FactoryBot.build(:doctor, description: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:description]).to include("can't be blank")
  end
  
  it 'should validate the presence of fee' do
    doctor = FactoryBot.build(:doctor, fee: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:fee]).to include("can't be blank")
  end
  
  it 'should validate the presence of exp' do
    doctor = FactoryBot.build(:doctor, exp: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:exp]).to include("can't be blank")
  end
  
  it 'should validate the presence of likes' do
    doctor = FactoryBot.build(:doctor, likes: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:likes]).to include("can't be blank")
  end
  
  it 'should validate the presence of phone' do
    doctor = FactoryBot.build(:doctor, phone: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:phone]).to include("can't be blank")
  end
  
  it 'should validate the presence of address' do
    doctor = FactoryBot.build(:doctor, address: '')
    expect(doctor).not_to be_valid
    expect(doctor.error.messages[:address]).to include("can't be blank")
  end
  
end
