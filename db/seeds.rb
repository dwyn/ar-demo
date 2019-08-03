
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
Artist.destroy_all
Song.destroy_all
Genre.destroy_all

p %Q(I've destroyed all of the things for you.)

25.times do
  Artist.create!(
    name: Faker::Music.band,
    location: "Japan",
    age: "100"
  )
end

p %Q(I've created #{Artist.count} artists for you.)

25.times do
  Song.create!(
    artist_id: Faker::Number.between(1, 25),
    title: Faker::Ancient.hero,
    length: 300,
    year: 3000
  )
end

p %Q(I've created #{Song.count} songs for you.)

10.times do
  Genre.create!(
    name: Faker::Music.genre
  )
end

p %Q(I've created #{Genre.count} genres for you.)