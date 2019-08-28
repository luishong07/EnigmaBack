# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

Message.destroy_all

UserMessage.destroy_all

u1 =  User.create(username:'Luis', password:'password')
u2 =  User.create(username:'Raul', password:'crispy')
u3 =  User.create(username:'Josie', password:'trippy')



m1 = Message.create(plain:'test',cipher:'ioen' )
m2 = Message.create(plain:'ijsdhf', cipher:'iusdhf')
m3 = Message.create(plain:'isdhf',cipher:'sdhj')


