# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superuser = User.create(
    first_name: 'Derick',
    last_name: 'Del Rosario',
    email: 'derickmitchel@icloud.com',
    password: 'password'
)

User.all


group = Group.create(
    name: 'H&H'
)

Group.all


item = Item.create(
    name: 'Airforce 1',
    brand: 'Nike',
    sex: 'M',
    size: 'US 9.5',
    pictures: 'picture.png',
    acquisition_value: 60,
    disposal_value: 120,
    notes: 'DS condition, box damaged'
)

Item.all