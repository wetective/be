@uids = [ "3f5d03cb681c454f8cc324c3303a579d", 
         "11954299cdfd402ca45449793d6e24c5", 
         "616712ad0f2f45b8b02b7c7b00d01d07", 
         "f03b9a09ff06f2ea36d26591898a7efe", 
         "8224f8c3c8374237adb1e8c00dd81e40", 
         "9fa9dcd0971948a9af42bb349b71b6b3", 
         "7e7f75c0362848648acb859ed0a945fa", 
         "4bfe391228e540d9abaa9a4710eb23e3", 
         "e63638197b2a4a8499e2bae569be603d", 
         "e95dd3ebd2b246d498b1a6cd9e3a82ea"
        ]

FactoryBot.define do
  factory :tip do
    description { Faker::Lorem.paragraph }
    location { Faker::Address.city }
    user_id { User.all.sample.id }
  end
end
