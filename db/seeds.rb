# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Situation.create(title: 'Death', sit_rep: 'You dieded.', choice_1: '2', choice_1_label: 'Go to Heaven', choice_2: '3', choice_2_label: 'Go to Hell')
Situation.create(title: 'You are in Heaven.', sit_rep: "I hope you like it because you can't leave.", ended: true)
Situation.create(title: 'You are in Hell.', sit_rep: "If you want to get to heaven click the button below that says 'Heaven'. Muahahahahahahhahaahhahahah!", ended: true)
