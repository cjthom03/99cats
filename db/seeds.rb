# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create!(birth_date: Date.new(2018, 1, 5), color: Cat::COLORS.sample, name: 'Captain_Whiskers', sex: 'F', description: 'A strong, proud champion of feline rights.')
cat2 = Cat.create!(birth_date: Date.new(2008, 11, 15), color: Cat::COLORS.sample, name: 'Tabby', sex: 'M', description: 'Enjoys Netflix and purr.')
cat3 = Cat.create!(birth_date: Date.new(2003, 2, 18), color: Cat::COLORS.sample, name: 'Ragdoll', sex: 'F', description: 'Just your typical kitty next door.')
cat4 = Cat.create!(birth_date: Date.new(1999, 6, 23), color: Cat::COLORS.sample, name: 'FrankenPaws', sex: 'M', description: 'Has soft paws.')
