# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

lilo = User.create!(email: "ohanalilo@disney.com", first_name: "Lilo", last_name: "Pelekai")
stitch = User.create!(email: "stitch@disney.com", first_name: "Stitch", last_name: "Pelekai")
hello = User.create!(email: "hellokitty@sanrio.com", first_name: "Hello", last_name: "Kitty")
cinnamon = User.create!(email: "cinnamon@sanrio.com", first_name: "Cinnamon", last_name: "Roll")
hiccup = User.create!(email: "hiccup@dreamworks.com", first_name: "Hiccup", last_name: "Haddock")
astrid = User.create!(email: "astrid.h@dreamworks.com", first_name: "Astrid", last_name: "Hofferson")
violet = User.create!(email: "violetparr@pixar.com", first_name: "Violet", last_name: "Parr")
jack = User.create!(email: "jack2@pixar.com", first_name: "Jack-Jack", last_name: "Parr")
mickey = User.create!(email: "mickey50@disney.com", first_name: "Mickey", last_name: "Mouse")
minnie = User.create!(email: "mrsminnie@jyp.com", first_name: "Minnie", last_name: "Mouse")


#--------------------------------------------------------------

chat1 = Chat.create!(sender_id: lilo.id, receiver_id: stitch.id)
chat2 = Chat.create!(sender_id: stitch.id, receiver_id: hello.id)
chat3 = Chat.create!(sender_id: hello.id, receiver_id: cinnamon.id)
chat4 = Chat.create!(sender_id: hiccup.id, receiver_id: astrid.id)
chat5 = Chat.create!(sender_id: violet.id, receiver_id: jack.id)
chat6 = Chat.create!(sender_id: mickey.id, receiver_id: minnie.id)
chat7 = Chat.create!(sender_id: minnie.id, receiver_id: violet.id)
chat8 = Chat.create!(sender_id: jack.id, receiver_id: mickey.id)
chat9 = Chat.create!(sender_id: cinnamon.id, receiver_id: lilo.id)
chat10 = Chat.create!(sender_id: astrid.id, receiver_id: stitch.id)

#-----------------------------------------------------------

Message.create!(chat_id: chat1.id, user_id: lilo.id, body: "Hey Stitch, did you eat my sandwich again?!")
Message.create!(chat_id: chat1.id, user_id: stitch.id, body: "delicious")

Message.create!(chat_id: chat2.id, user_id: stitch.id, body: "Hey Hello Kitty!")
Message.create!(chat_id: chat2.id, user_id: hello.id, body: "Hi Stitch! Want to draw together?")

Message.create!(chat_id: chat3.id, user_id: hello.id, body: "Cinnamon! Want to go get some muffins later?")
Message.create!(chat_id: chat3.id, user_id: cinnamon.id, body: "Yesss! Sanrio Café at 4")

Message.create!(chat_id: chat4.id, user_id: hiccup.id, body: "Have you seen Toothless?")
Message.create!(chat_id: chat4.id, user_id: astrid.id, body: "Yes! Toothless is flying over the mountains")

Message.create!(chat_id: chat5.id, user_id: violet.id, body: "Jack-Jack, please be careful")
Message.create!(chat_id: chat5.id, user_id: jack.id, body: "*baby giggle*")

Message.create!(chat_id: chat6.id, user_id: mickey.id, body: "Hello Minnie!")
Message.create!(chat_id: chat6.id, user_id: minnie.id, body: "Hello Mickey <3")

Message.create!(chat_id: chat7.id, user_id: minnie.id, body: "Hi Violet! Want to go shopping?")
Message.create!(chat_id: chat7.id, user_id: violet.id, body: "Sure! Let's meet at the mall at 5.")

Message.create!(chat_id: chat8.id, user_id: jack.id, body: "*baby giggle*")
Message.create!(chat_id: chat8.id, user_id: mickey.id, body: "Haha! You're so cute, Jack-Jack.")

Message.create!(chat_id: chat9.id, user_id: cinnamon.id, body: "Hey Lilo, want to bake some cupcakes together?")
Message.create!(chat_id: chat9.id, user_id: lilo.id, body: "Yes please!")

Message.create!(chat_id: chat10.id, user_id: astrid.id, body: "Stitch, you're needed for dragon training.")
Message.create!(chat_id: chat10.id, user_id: stitch.id, body: "Dragon! I ride now!")
