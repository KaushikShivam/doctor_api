FactoryBot.define do
  factory :doctor do
    sequence(:name) { |n| "MyString #{n}" }
    category { "MyString" }
    description { "MyText" }
    fee { "MyString" }
    exp { "MyString" }
    likes { "MyString" }
    phone { "MyString" }
    address { "MyString" }
    image { "MyString" }
  end
end
