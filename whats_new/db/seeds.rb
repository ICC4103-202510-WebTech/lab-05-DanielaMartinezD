# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
  email: "ohanalilo@disney.com",
  first_name: "Lilo",
  last_name: "Pelekai"
)

User.create!(
  email: "stitch@disney.com",
  first_name: "Stitch",
  last_name: "Pelekai"
)

User.create!(
  email: "hellokitty@sanrio.com",
  first_name: "Hello",
  last_name: "Kitty"
)

User.create!(
  email: "cinnamon@sanrio.com",
  first_name: "Cinnamon",
  last_name: "Roll"
)

User.create!(
  email: "hiccup@dreamworks.com",
  first_name: "Hiccup",
  last_name: "Haddock"
)

User.create!(
  email: "astrid.h@dreamworks.com",
  first_name: "Astrid",
  last_name: "Hofferson"
)

User.create!(
  email: "violetparr@pixar.com",
  first_name: "Violet",
  last_name: "Parr"
)

User.create!(
  email: "jack2@pixar.com",
  first_name: "Jack-Jack",
  last_name: "Parr"
)

User.create!(
  email: "mickey50@disney.com",
  first_name: "Mickey",
  last_name: "Mouse"
)

User.create!(
  email: "mrsminnie@jyp.com",
  first_name: "Minnie",
  last_name: "Mouse"
)

#--------------------------------------------------------------

Chat.create!(
  sender_id: User.first.id,
  receiver_id: User.second.id
)

Chat.create!(
  sender_id: User.second.id,
  receiver_id: User.third.id
)

Chat.create!(
  sender_id: User.third.id,
  receiver_id: User.fourth.id
)

Chat.create!(
  sender_id: User.fifth.id,
  receiver_id: User.fourth.id
)

Chat.create!(
  sender_id: User.first.id,
  receiver_id: User.fifth.id
)

Chat.create!(
  sender_id: User.second.id,
  receiver_id: User.first.id
)

Chat.create!(
  sender_id: User.second.id,
  receiver_id: User.fourth.id
)

Chat.create!(
  sender_id: User.third.id,
  receiver_id: User.first.id
)

Chat.create!(
  sender_id: User.first.id,
  receiver_id: User.third.id
)

Chat.create!(
  sender_id: User.fourth.id,
  receiver_id: User.first.id
)

#-----------------------------------------------------------

Message.create!(
  chat_id: Chat.first.id,
  user_id: User.find_by(first_name: "Lilo").id,
  body: "Hey Stitch, did you eat my sandwich again?!"
)

Message.create!(
  chat_id: Chat.first.id,
  user_id: User.find_by(first_name: "Stitch").id,
  body: "delicious"
)

Message.create!(
  chat_id: Chat.second.id,
  user_id: User.find_by(first_name: "Hello").id,
  body: "Cinnamon! Want to go get some muffins later?"
)

Message.create!(
  chat_id: Chat.second.id,
  user_id: User.find_by(first_name: "Cinnamon").id,
  body: "Yesss! Sanrio Café at 4"
)

Message.create!(
  chat_id: Chat.third.id,
  user_id: User.find_by(first_name: "Hiccup").id,
  body: "Have you seen Toothless?"
)

Message.create!(
  chat_id: Chat.third.id,
  user_id: User.find_by(first_name: "Astrid").id,
  body: "Yes! Toothless is flying over the mountains"
)

Message.create!(
  chat_id: Chat.fourth.id,
  user_id: User.find_by(first_name: "Violet").id,
  body: "Jack-Jack, please be careful"
)

Message.create!(
  chat_id: Chat.fourth.id,
  user_id: User.find_by(first_name: "Jack-Jack").id,
  body: "*baby giggle*"
)

Message.create!(
  chat_id: Chat.fifth.id,
  user_id: User.find_by(first_name: "Mickey").id,
  body: "Hello Minnie!"
)

Message.create!(
  chat_id: Chat.fifth.id,
  user_id: User.find_by(first_name: "Minnie").id,
  body: "Hello Mickey <3"
)
