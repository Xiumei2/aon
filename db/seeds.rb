# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cardholder.create(name: 'Xiumei Meng', email: 'xiumei@mail.com', birthday:'2018-11-07', card_number:'111111',balance:100, debit:0, credit:100)
Cardholder.create(name: 'Kira Barber', email: 'kira@mail.com', birthday:'2018-11-07', card_number:'222222',balance:60, debit:0, credit:0)
Cardholder.create(name: 'Mia Hock', email: 'mia@mail.com', birthday:'2018-11-07', card_number:'333333',balance:40, debit:0, credit:50)