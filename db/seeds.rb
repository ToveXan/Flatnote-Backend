# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Note.destroy_all

tove = User.create(username: "tove", password: "4430")
london = User.create(username: "london", password: "4430")

note1 = Note.create(title: "test", description: "Und nur die Historie ist ubriggeblieben", user_id: tove.id)
note2 = Note.create(title: "test 2", description: "Das Maerchen des Lichts und Dunkels", user_id: london.id)
