# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_1 = Company.create(name: 'company', description: 'company description')

user_1 = User.create(name: 'example',
                     email: 'example@email.com',
                     password: '123456',
                     company: company_1)