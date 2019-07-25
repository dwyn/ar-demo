require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ActiveRecord::Base.establish_connection
# ActiveRecord::Base.connection.tables.each do |table|
#   next if table == 'schema_migrations'

#   # MySQL and PostgreSQL
#   # ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

#   # SQLite
#   ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
# end


25.times do
  Artist.create!(
    name: Faker::Music.band,
    location: "Japan",
    age: "100"
  )
end

25.times do
  Song.create!(
    artist_id: 1,
    title: Faker::Ancient.hero,
    length: 300,
    year: 3000
  )
end