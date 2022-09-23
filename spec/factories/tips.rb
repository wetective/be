FactoryBot.define do
  factory :tip do
    uid { 1 }
    description { "MyText" }
    location { "MyString" }
    references { :user }
  end
end
