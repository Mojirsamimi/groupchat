# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'add_reset_pk_sequence_to_base.rb'
Chatroom.delete_all
Chat.delete_all
Chatroom.reset_pk_sequence
Chat.reset_pk_sequence
Chatroom.create(chr_name: "Funny")
Chatroom.create(chr_name: "Election News")
Chatroom.create(chr_name: "Arts")
Chatroom.create(chr_name: "Entertainment")
Chat.create(user_id: 1,chatroom_id: 1,ch_text: "Hello all!")
Chat.create(user_id: 2,chatroom_id: 1,ch_text: "Hello all!")
Chat.create(user_id: 2,chatroom_id: 1,ch_text: "I am User1.")
Chat.create(user_id: 1,chatroom_id: 1,ch_text: "I am Mojir Samimi!")
Chat.create(user_id: 2,chatroom_id: 1,ch_text: "I am very funny!")
Chat.create(user_id: 1,chatroom_id: 1,ch_text: "I am very funny too!")