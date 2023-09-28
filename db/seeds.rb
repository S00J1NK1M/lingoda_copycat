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

# Create languages
italian = { name: "Italian" }
ukranian = { name: "Ukranian" }
korean = { name: "Korean" }

[italian, ukranian, korean].each do |attributes|
  language = Language.create!(attributes)
  puts "Created #{language.name}"
end

# Create teachers
matteo = { name: "Matteo" }
anna = { name: "Anna" }
eric = { name: "Eric" }

[matteo, anna, eric].each do |attributes|
  teacher = Teacher.create!(attributes)
  puts "Created #{teacher.name}"
end

# Create courses
start_time_it = DateTime.now + 3
start_time_uk = DateTime.now + 4
start_time_ko = DateTime.now + 5

italian_A1 = {
  description: "test for italian",
  level: "A1",
  start_at: start_time_it,
  end_at: start_time_it + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id }

ukranian_A2 = {
  description: "test for ukranian",
  level: "A2",
  start_at: start_time_uk,
  end_at: start_time_uk + 1.hour,
  language_id: Language.find_by(name: 'Ukranian').id,
  teacher_id: Teacher.find_by(name: 'Anna').id }

korean_B1 = {
  description: "test for korean",
  level: "B1",
  start_at: start_time_ko,
  end_at: start_time_ko + 1.hour,
  language_id: Language.find_by(name: 'Korean').id,
  teacher_id: Teacher.find_by(name: 'Eric').id }

[italian_A1, ukranian_A2, korean_B1].each do |attributes|
  course = Course.create!(attributes)
  puts "Created!"
end

puts "Finished!"
