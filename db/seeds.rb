# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_1 = Company.create(name: 'company', description: 'company description')

user_1 = User.create(name: 'Usuario1', email: 'user1@email.com', password: '123456', company: company_1)

table_1 = Table.create(name: "Table1", description: "Table 1", company: company_1)

client_1 = Client.create(name: "Client 1", email: "client1@cliente.com.br", company: company_1)

client_2 = Client.create(name: "Client 2", email: "client1@cliente.com.br", company: company_1)

client_3 = Client.create(name: "Client 3", email: "client1@cliente.com.br", company: company_1)

card_1 = Card.create(value: 1000, public_id: "Public Id", client: client_1)
card_2 = Card.create(value: 1000, public_id: "Public Id", client: client_2)
card_3 = Card.create(value: 1000, public_id: "Public Id", client: client_3)

operation_1 = Operation.create(value: 10, card_id: 1)

match_1 = Match.create(human_score: 1, robot_score: 1, table: table_1, public_id: 1, card_id: 1)

match_2 = Match.create(human_score: 10, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_3 = Match.create(human_score: 12, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_4 = Match.create(human_score: 13, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_5 = Match.create(human_score: 11, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_6 = Match.create(human_score: 1, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_7 = Match.create(human_score: 5, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_8 = Match.create(human_score: 6, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_9 = Match.create(human_score: 7, robot_score: 1, table: table_1, public_id: 1, card_id: 1)
match_10 = Match.create(human_score: 9, robot_score: 1, table: table_1, public_id: 1, card_id: 1)


