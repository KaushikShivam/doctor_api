# frozen_string_literal: true

FactoryBot.define do
  factory :appointment do
    patient { 'MyString' }
    reason { 'MyString' }
    date { 'MyString' }
    time { 'MyString' }
    user { nil }
    doctor { nil }
  end
end
