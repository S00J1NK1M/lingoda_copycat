# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Course.destroy_all
Language.destroy_all
Teacher.destroy_all

puts "Creating DB..."

# create languages
italian = { name: "Italian" }
ukranian = { name: "Ukranian" }
korean = { name: "Korean" }

[italian, ukranian, korean].each do |attributes|
  language = Language.create!(attributes)
  puts "Created #{language.name}"
end

# create teachers
matteo = { name: "Matteo" }
anna = { name: "Anna" }
eric = { name: "Eric" }

[matteo, anna, eric].each do |attributes|
  teacher = Teacher.create!(attributes)
  puts "Created #{teacher.name}"
end

# create courses
italian_A1 = { description: "test for italian", level: "A1", language_id: Language.find_by(name: 'Italian').id, teacher_id: Teacher.find_by(name: 'Matteo').id }
ukranian_A2 = { description: "test for ukranian", level: "A2", language_id: Language.find_by(name: 'Ukranian').id, teacher_id: Teacher.find_by(name: 'Anna').id }
korean_B1 = { description: "test for korean", level: "B1", language_id: Language.find_by(name: 'Korean').id, teacher_id: Teacher.find_by(name: 'Eric').id }

[italian_A1, ukranian_A2, korean_B1].each do |attributes|
  course = Course.create!(attributes)
  puts "Created!"
end

puts "Finished!"
