# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Group.destroy_all
Item.destroy_all
UserGroup.destroy_all

superuser = User.create(
    first_name: 'Derick',
    last_name: 'Del Rosario',
    email: 'derickmitchel@icloud.com',
    password: 'password'
)

PASSWORD = 'password123'

3.times do
    name = Faker::Kpop.boy_bands
    Group.create(
        name: name
    )
end
groups = Group.all

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
      first_name: first_name,
      last_name: last_name,
      email: "#{first_name.downcase}-#{last_name.downcase}@example.com",
      password: PASSWORD
    )
end
users = User.all

30.times do
    name = ['shoe', 'shirt', 'tank top', 'hat', 'hoodie'].sample(1)
    brand = ['Nike', 'Adidas', 'Balenciaga', 'Off White', 'Maison Margiela'].sample(1)
    sex = ['M', 'W', 'U'].sample(1)
    size = ['US 9.5', 'EU 44', 'US M', 'US XS', 'AS M', 'OS'].sample(1)
    pictures = ['picture1', 'picture2', 'picture3']
    acquisition_value = rand(30..550)
    disposal_value = rand(80..950)
    notes = ['DS Condition', '8.5/10 Condition', 'DS No Box', 'VNDS', '9.5/10'].sample(1)
    item = Item.create(
        name: name,
        brand: brand,
        sex: sex,
        size: size,
        pictures: pictures,
        acquisition_value: acquisition_value,
        disposal_value: disposal_value,
        notes: notes
    )
end
items = Item.all

4.times do
    group_items = Item.all.sample(10)
    group_users = User.all.sample(2)
    group = Group.all.sample
    UserGroup.create(
        group: group,
        users: group_users,
        items: group_items
    )
end