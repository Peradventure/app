# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Situation.create(id: '1', title: 'Wake up Neo...', sit_rep: 'You wake up at your terminal and see someone typed the words "Wake up Neo..."', choice_1: '2', choice_1_label: 'Type Back', choice_2: '3', choice_2_label: 'Turn Off Computer')
Situation.create(id: '2', title: 'Who is this?', sit_rep: "You type back in 'Who is this?' and the FBI breaks down your door and arrests you. Game over man.", ending: true)
Situation.create(id: '3', title: 'Blue Pill', sit_rep: "You turn off the computer but you notice the power cord wasn't even plugged in. You realize you must still be asleep and this is all a dream.", choice_1: '1', choice_1_label: 'Wake Up', choice_2: '0', choice_2_label: 'Stay in the dream.' )

User.create(id: '1', email: 'randy@tanga.com', password: 'password', admin: false)
User.create(id: '2', email: 'david@tanga.com', password: 'password', admin: false)
User.create(id: '42', email: 'randy+admin@tanga.com', password: 'password', admin: true)
User.create(id: '23', email: 'david+admin@tanga.com', password: 'password', admin: true)
