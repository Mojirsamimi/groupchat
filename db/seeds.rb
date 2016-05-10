# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'add_reset_pk_sequence_to_base.rb'
Chat.delete_all
Chatroom.delete_all
Chatroom.reset_pk_sequence
Chat.reset_pk_sequence
User.delete_all
User.reset_pk_sequence
Chatroom.create(chr_name: "Star Wars!")
Chatroom.create(chr_name: "Hackers")
Chatroom.create(chr_name: "Funny")
Chatroom.create(chr_name: "Election News")
Chatroom.create(chr_name: "Arts")
Chatroom.create(chr_name: "Entertainment")

mojir=User.create(name: 'Mojir',email: 'mojir@email.com',password: '11111111')
pito=User.create(name: 'Pito',email: 'pito@email.com',password: '11111111')
user=Array.new
(1..5).each do |i|
user[i]=User.create(name: Faker::StarWars.character,email: 'user'+i.to_s+'@email.com',password: '11111111')
end
(6..10).each do |i|
  user[i]=User.create(name: Faker::Name.name,email: 'user'+i.to_s+'@email.com',password: '11111111')
end

30.times do
Chat.create(user_id: user[rand(1...5)].id,chatroom_id: 1,ch_text: Faker::StarWars.quote)
end
20.times do
Chat.create(user_id: user[rand(6...10)].id,chatroom_id: 2,ch_text: Faker::Hacker.say_something_smart)
end

15.times do
Chat.create(user_id: user[rand(6...10)].id,chatroom_id: 3,ch_text: Faker::Hacker.say_something_smart)
end
10.times do
Chat.create(user_id: user[rand(6...10)].id,chatroom_id: 4,ch_text: Faker::Hacker.say_something_smart)
end
10.times do
Chat.create(user_id: user[rand(6...10)].id,chatroom_id: 5,ch_text: Faker::Hacker.say_something_smart)
end
10.times do
Chat.create(user_id: user[rand(6...10)].id,chatroom_id: 6,ch_text: Faker::Hacker.say_something_smart)
end

Chat.create(user_id: mojir.id,chatroom_id: 1,ch_text: Faker::StarWars.quote)
Chat.create(user_id: pito.id,chatroom_id: 1,ch_text: Faker::StarWars.quote)

Chat.create(user_id: mojir.id,chatroom_id: 2,ch_text: Faker::Hacker.say_something_smart)
Chat.create(user_id: pito.id,chatroom_id: 2,ch_text: Faker::Hacker.say_something_smart)

Chat.create(user_id: mojir.id,chatroom_id: 3,ch_text: Faker::Hacker.say_something_smart)
Chat.create(user_id: pito.id,chatroom_id: 3,ch_text: Faker::Hacker.say_something_smart)

Chat.create(user_id: mojir.id,chatroom_id: 4,ch_text: Faker::Hacker.say_something_smart)
Chat.create(user_id: pito.id,chatroom_id: 4,ch_text: Faker::Hacker.say_something_smart)

Chat.create(user_id: mojir.id,chatroom_id: 5,ch_text: Faker::Hacker.say_something_smart)
Chat.create(user_id: pito.id,chatroom_id: 5,ch_text: Faker::Hacker.say_something_smart)

Chat.create(user_id: mojir.id,chatroom_id: 6,ch_text: Faker::Hacker.say_something_smart)
Chat.create(user_id: pito.id,chatroom_id: 6,ch_text: Faker::Hacker.say_something_smart)


#Chat.create(user_id: 2,chatroom_id: 1,ch_text: "Hello all!")
#Chat.create(user_id: 2,chatroom_id: 1,ch_text: "I am User1.")
#Chat.create(user_id: 1,chatroom_id: 1,ch_text: "I am Mojir Samimi!")
#Chat.create(user_id: 2,chatroom_id: 1,ch_text: "I am very funny!")
#Chat.create(user_id: 1,chatroom_id: 1,ch_text: "I am very funny too!")