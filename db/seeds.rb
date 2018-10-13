# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.destroy_all

User.create name:'Brad', email: 'brad@brad', password: 'chicken'
User.create name:'Bob', email: 'bob@bob', password: 'chicken'
User.create name:'Ben', email: 'ben@ben', password: 'chicken'

puts "Created #{User.all.length} users."




Conflict.destroy_all

cf1 = Conflict.create name: 'Criminal violence in Mexico', country: 'Mexico', conflict_type: 'Criminal violence', description: '', parties: 'Mexico', image: ''

cf2 = Conflict.create name: 'Rohingya Crisis in Myanmar', country: 'Myanmar', conflict_type: 'Sectarian', description: '', parties: 'Myanmar', image: ''

cf3 = Conflict.create name: 'North Korea Crisis', country: 'North Korea', conflict_type: 'Interstate', description: '', parties: 'North Korea', image: ''

cf4 = Conflict.create name: 'Conflict in Ukraine', country: 'Ukraine', conflict_type: 'Territorial dispute', description: '', parties: 'Ukraine, Russia', image: ''

cf5 = Conflict.create name: 'Civil War in South Sudan', country: 'Sudan', conflict_type: 'Civil war', description: '', parties: 'Sudan', image: ''

cf6 = Conflict.create name: 'Violence in the Democratic Republic of Congo', country: 'Democratic Republic of Congo', conflict_type: 'Political instability', description: '', parties: 'Congo', image: ''

cf7 = Conflict.create name: 'Destabilisation of Mali', country: 'Mail', conflict_type: 'Transnational terrorism', description: '', parties: 'Jihadist groups', image: ''

cf8 = Conflict.create name: 'Syrian Civil War', country: 'Syria', conflict_type: 'Civil war', description: '', parties: 'Syrian Government', image: ''

cf9 = Conflict.create name: 'War Against Islamic State', country: 'Iraq', conflict_type: 'Civil war', description: '', parties: 'Islamic State', image: ''

cf10 = Conflict.create name: 'Nagorno-Karabakh Conflict', country: 'Armenia', conflict_type: 'Territorial dispute', description: '', parties: 'Armenian, Azerbaijan', image: ''

puts "Created #{Conflict.all.length} conflicts."





Continent.destroy_all

ct1 = Continent.create name: 'Africa', area: '30 million square kilometres', population: '1.2 billion', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-africa.png'

ct2 = Continent.create name: 'Europe', area: '10 million square kilometres', population: '739 million', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-europe.png'

ct3 = Continent.create name: 'Asia', area: '44 million square kilometres' , population: '4.4 billion', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/11/continent-of-asia.png'

ct4 = Continent.create name: 'North America', area: '24 million square kilometres' , population: '579 million' , image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-north-america.png'

ct5 = Continent.create name: 'South America', area: '18 million square kilometres' , population: '423 million', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-south-america.png'

ct6 = Continent.create name: 'Australia', area: '8 million square kilometres' , population: '24 million', image: 'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-australia.png'

ct7 = Continent.create name: 'Antarctica', area: '14 million square kilometres', population: '1000-4000' , image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-antarctica.png'

puts "Created #{Continent.all.length} continents."


ct1.conflicts << cf5 << cf6 << cf7
ct2.conflicts << cf4 << cf10
ct3.conflicts << cf2 << cf3 << cf8 <<cf9
ct5.conflicts << cf1
