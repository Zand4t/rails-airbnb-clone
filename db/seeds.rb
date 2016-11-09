# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Owners

owners_attributes = Owner.create([{name: 'Tom'}, {name: 'Jerry'}])

#streams
streams_attributes = [

  {
    name: 'Crocs are cool',
    link: 'www.youtube.com',
    description: 'I love Crocs',
    owner_id: 1
  },
  {
    name: 'Gators are Great',
    link: 'www.wikipedia.org',
    description: 'Alligators are my friends',
    owner_id: 2
  }
]

streams_attributes.each { |params| Stream.create!(params) }
