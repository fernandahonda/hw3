Place.destroy_all
Entry.destroy_all

mexico_city = Place.new
mexico_city["name"] = "Mexico City"
mexico_city.save

oklahoma_city = Place.new
oklahoma_city["name"] = "Oklahoma City"
oklahoma_city.save

beijing = Place.new
beijing["name"] = "Beijing"
beijing.save

amsterdam = Place.new
amsterdam["name"] = "Amsterdam"
amsterdam.save

mexico_city_id = Place.find_by({"name" => "Mexico City"})["id"]
beijing_id = Place.find_by({"name" => "Beijing"})["id"]

ate_tacos = Entry.new
ate_tacos["title"] = "Ate tacos"
ate_tacos["description"] = "lorem ipsum"
ate_tacos["place_id"] = mexico_city_id
ate_tacos["posted_on"] = "2024-05-19"
ate_tacos.save

wedding = Entry.new
wedding["title"] = "Lisa and Jim's wedding"
wedding["description"] = "lorem ipsum"
wedding["place_id"] = mexico_city_id
wedding["posted_on"] = "2024-05-20"
wedding.save

ate_tacos_again = Entry.new
ate_tacos_again["title"] = "Ate tacos again"
ate_tacos_again["description"] = "lorem ipsum"
ate_tacos_again["place_id"] = mexico_city_id
ate_tacos_again["posted_on"] = "2024-05-21"
ate_tacos_again.save

ate_dumplings = Entry.new
ate_dumplings["title"] = "Ate dumplings"
ate_dumplings["description"] = "lorem ipsum"
ate_dumplings["place_id"] = beijing_id
ate_dumplings["posted_on"] = "2024-05-22"
ate_dumplings.save

puts "There are now #{Place.all.count} places and #{Entry.all.count} entries."