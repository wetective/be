# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = FactoryBot.create(:user)
user_2 = FactoryBot.create(:user)
user_3 = FactoryBot.create(:user)
user_4 = FactoryBot.create(:user)
user_5 = FactoryBot.create(:user)
user_6 = FactoryBot.create(:user)
user_7 = FactoryBot.create(:user)
user_8 = FactoryBot.create(:user)
user_9 = FactoryBot.create(:user)
user_10 = FactoryBot.create(:user)

tips = FactoryBot.create_list(:tip, 30)