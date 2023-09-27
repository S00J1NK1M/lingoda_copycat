# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
# Language.destroy_all
# Teacher.destroy_all

# puts "Creating db..."

# # create languages
# italian = { name: "Italian" }
# ukranian = { name: "Ukranian" }

# [italian, ukranian].each do |attributes|
#   language = Language.create!(attributes)
#   puts "Created #{language.name}"
# end

# # create teachers
# matteo = { name: "Matteo" }
# anna = { name: "Anna" }

# [matteo, anna].each do |attributes|
#   teacher = Teacher.create!(attributes)
#   puts "Created #{teacher.name}"
# end

# create courses
italian_A1 = { description: "test test", level: "A1", language_id: 15, teacher_id: 12 }
ukranian_A2 = { description: "test test testttt", level: "A2", language_id: 16, teacher_id: 13}

[italian_A1, ukranian_A2].each do |attributes|
  course = Course.create!(attributes)
  puts "Created!"
end

puts "Finished!"
