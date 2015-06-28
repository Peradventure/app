# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Situation.create(id: '1', title: 'Death', sit_rep: 'You dieded.', choice_1: '2', choice_1_label: 'Go to Heaven', choice_2: '3', choice_2_label: 'Go to Hell')
Situation.create(id: '2', title: 'You are in Heaven.', sit_rep: "I hope you like it because you can't leave.", ending: true)
Situation.create(id: '3', title: 'You are in Hell.', sit_rep: "If you want to get to heaven click the button below that says 'Heaven'. Muahahahahahahhahaahhahahah!", ending: true)
Situation.create(id: '42', title: 'Testing nil choices.', sit_rep: "Developers are nil and so am I.", ending: true)
Situation.create(id: '43', title: 'Testing long choices.', sit_rep: "Developers are long and so am I.", ending: true, choice_1: '42', choice_1_label: 'This is a very long label for a choice and you shouldnt be able to do this and my grammer is dumb.')
