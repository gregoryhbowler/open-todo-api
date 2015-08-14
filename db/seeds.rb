# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find_or_create_by(username: 'greg', password: 'bowler')
user2 = User.find_or_create_by(username: 'ricky', password: 'panzer')
list = List.find_or_create_by(title: 'testlist', user_id: user.id)
item = Item.find_or_create_by(description: 'testitem', list_id: list.id)
