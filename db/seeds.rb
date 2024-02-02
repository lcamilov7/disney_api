# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Borrando"
Genre.destroy_all
Movie.destroy_all
Character.destroy_all
puts "Borrado base de datos"

puts "Creando generos"
action = Genre.create(name: "Action")
kids = Genre.create(name: "Kids")
puts "Generos creados"

puts "Creando peliculas"
simbad = Movie.create(title: "Simbad el marino", rating: 4.3, genre_id: kids.id, release_date: DateTime.new(2003, 7, 2, 12, 0, 0))
dumbo = Movie.create(title: "Dumbo", rating: 3.8, genre_id: kids.id, release_date: DateTime.new(1941, 3, 7, 12, 0, 0))
piratas = Movie.create(title: "Piratas del Caribe", rating: 4.8, genre_id: action.id, release_date: DateTime.new(2003, 8, 1, 12, 0, 0))
iron = Movie.create(title: "Iron Man", rating: 3.9, genre_id: action.id, release_date: DateTime.new(2010, 4, 10, 12, 0, 0))
puts "Peliculas creadas"

puts "Creando personajes"
simbadpj = Character.create(name: "Simbad", age: 30, weight: 80.0, story: "The story for a character lorem ipsum lorem ipsum", movie_id: simbad.id)
eris = Character.create(name: "Eris", age: 32, weight: 60.0, story: "The story for a character lorem ipsum lorem ipsum", movie_id: simbad.id)
dumbopj = Character.create(name: "Dumbo", age: 3, weight: 100.0, story: "The story for a character lorem ipsum lorem ipsum", movie_id: dumbo.id)
timothy = Character.create(name: "Timothy", age: 2, weight: 0.2, story: "The story for a character lorem ipsum lorem ipsum", movie_id: dumbo.id)
jack = Character.create(name: "Jack Sparrow", age: 34, weight: 84.2, story: "The story for a character lorem ipsum lorem ipsum", movie_id: piratas.id)
barbosa = Character.create(name: "Barbosa", age: 44, weight: 88.2, story: "The story for a character lorem ipsum lorem ipsum", movie_id: piratas.id)
tony = Character.create(name: "Tony Stark", age: 40, weight: 73.5, story: "The story for a character lorem ipsum lorem ipsum", movie_id: iron.id)
pepper = Character.create(name: "Pepper", age: 37, weight: 55.8, story: "The story for a character lorem ipsum lorem ipsum", movie_id: iron.id)
puts "Personajes creados"
