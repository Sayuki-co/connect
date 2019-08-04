# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  (1..10).each do |i|
    Company.create(
	name: "ユーザー#{i}",
	occupation: "sales",
	hope: "希望#{i}",
	outline: "会社概要#{i}",
	introduce: "こんな会社です#{i}",
	want: "こんな事したいです#{i}",
	message: "メッセージ#{i}",
	area: "関東"
	)
  end
end
