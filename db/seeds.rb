# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require 'csv'

csv_text = File.read(Rails.root.join('db', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Pokemon.new
  t.name = row['Name']
  t.type1 = row['Type 1']
  t.type2 = row['Type 2']
  t.total = row['Total']
  t.hp = row['HP']
  t.attack = row['Attack']
  t.defense = row['Defense']
  t.sp_atk = row['Sp. Atk']
  t.sp_def = row['Sp. Def']
  t.speed = row['Speed']
  t.generation = row['Generation']
  t.legendary = row['Legendary']
  t.save
  puts "Pokemon #{t.name} is saved"
end



puts "There are now #{Pokemon.count} Pokemons in the Pokemons table"
