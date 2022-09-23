# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  FactoryBot.create(:user)
end

3.times do
  FactoryBot.create(:tip, uid: "3f5d03cb681c454f8cc324c3303a579d")
  FactoryBot.create(:tip, uid: "11954299cdfd402ca45449793d6e24c5")
  FactoryBot.create(:tip, uid: "616712ad0f2f45b8b02b7c7b00d01d07")
  FactoryBot.create(:tip, uid: "f03b9a09ff06f2ea36d26591898a7efe")
  FactoryBot.create(:tip, uid: "8224f8c3c8374237adb1e8c00dd81e40")
  FactoryBot.create(:tip, uid: "9fa9dcd0971948a9af42bb349b71b6b3")
  FactoryBot.create(:tip, uid: "7e7f75c0362848648acb859ed0a945fa")
  FactoryBot.create(:tip, uid: "4bfe391228e540d9abaa9a4710eb23e3")
  FactoryBot.create(:tip, uid: "e63638197b2a4a8499e2bae569be603d")
  FactoryBot.create(:tip, uid: "e95dd3ebd2b246d498b1a6cd9e3a82ea")
end