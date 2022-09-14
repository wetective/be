FactoryBot.define do
  factory :tip do
    uid { 1 }
    location { "MyString" }
    date { "2022-09-14 14:17:48" }
    time { "2022-09-14 14:17:48" }
    description { "MyText" }
    references { "" }
  end
end
