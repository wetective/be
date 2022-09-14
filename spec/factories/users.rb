FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    phone { 1 }
    email { "MyString" }
    city { "MyString" }
    state { "MyString" }
    password_digest { "MyString" }
  end
end
