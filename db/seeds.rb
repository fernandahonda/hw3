# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

places = Place.create([
  { name: "Mexico City" },
  { name: "Oklahoma City" },
  { name: "Beijing" },
  { name: "Amsterdam" }
])

mexico_city_id = Place.find_by({"name" => "Mexico City"})["id"]
beijing_id = Place.find_by({"name" => "Beijing"})["id"]

entries = Entry.create([
  { title: "Ate tacos", description: "lorem ipsum", place_id: mexico_city_id, posted_on: "2024-05-19" },
  { title: "Lisa and Jim's wedding", description: "lorem ipsum", place_id: mexico_city_id, posted_on: "2024-05-20" },
  { title: "Ate tacos again", description: "lorem ipsum", place_id: mexico_city_id, posted_on: "2024-05-21" },
  { title: "Ate dumplings", description: "lorem ipsum", place_id: beijing_id, posted_on: "2024-05-22" }
])


