FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    city { Faker::Address.city }
    state { Faker::Address.state }
    password_digest { Faker::Internet.password }
  end
end
