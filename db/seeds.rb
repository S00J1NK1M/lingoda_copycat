puts "Cleaning database..."

Booking.destroy_all
Course.destroy_all
Language.destroy_all
Teacher.destroy_all

puts "Creating DB..."

# Create languages
italian = { name: "Italian" }
ukranian = { name: "Ukranian" }
english = { name: "English" }
korean = { name: "Korean" }
german = { name: "German" }
spanish = { name: "Korean" }
portuguese = { name: "Portuguese" }
french = { name: "French" }
finnish = { name: "Finnish" }
japanese = { name: "Japanese" }
chinese = { name: "Chinese" }
polish = { name: "Polish" }
danish = { name: "Danish" }

[italian, ukranian, korean, english, german, spanish, portuguese, french, finnish, japanese, chinese, polish, danish].each do |attributes|
  language = Language.create!(attributes)
  puts "Created #{language.name}"
end

# Create teachers
matteo = { name: "Matteo" }
anna = { name: "Anna" }
eric = { name: "Eric" }
soojin = { name: "Soojin" }
akane = { name: "Akane" }
cuilu = { name: "Cuilu" }
ardian = { name: "Ardian" }
shakar = { name: "Shakar" }
arianna = { name: "Arianna" }
juan = { name: "Juan" }
shamaila = { name: "Shamaila" }

[matteo, anna, eric, soojin, akane, cuilu, ardian, shakar, arianna, juan, shamaila].each do |attributes|
  teacher = Teacher.create!(attributes)
  puts "Created #{teacher.name}"
end

# Create courses
start_time_1 = DateTime.now + (rand * 21)
start_time_2 = DateTime.now + (rand * 21)
start_time_3 = DateTime.now + (rand * 21)
start_time_4 = DateTime.now + (rand * 21)
start_time_5 = DateTime.now + (rand * 21)
start_time_6 = DateTime.now + (rand * 21)
start_time_7 = DateTime.now + (rand * 21)
start_time_8 = DateTime.now + (rand * 21)
start_time_9 = DateTime.now + (rand * 21)
start_time_10 = DateTime.now + (rand * 21)
start_time_11 = DateTime.now + (rand * 21)
start_time_12 = DateTime.now + (rand * 21)

italian_1 = {
  description: "Here you'll learn: how to say which country something/someone is in, how to conjugate regular verbs ending in -are in the plural and the difference between in and a with cities and countries",
  level: "A1",
  start_at: start_time_1,
  end_at: start_time_1 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id }

italian_2 = {
  description: "Here you'll learn: a few simple words you can use in everyday conversation, which nouns are masculine and which are feminine",
  level: "A2",
  start_at: start_time_2,
  end_at: start_time_2 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Arianna').id }

italian_3 = {
  description: "Here you'll review: the vocabulary from the last two lessons, the forms of the verb abitare, feminine and masculine nouns",
  level: "B1",
  start_at: start_time_3,
  end_at: start_time_3 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id }

italian_4 = {
  description: "Here you'll learn: to talk about which country you're from",
  level: "B1",
  start_at: start_time_4,
  end_at: start_time_4 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Arianna').id }

ukranian_1 = {
  description: "Here you'll learn: to say which languages you speak, more words for languages and nationalities, negation",
  level: "A2",
  start_at: start_time_5,
  end_at: start_time_5 + 1.hour,
  language_id: Language.find_by(name: 'Ukranian').id,
  teacher_id: Teacher.find_by(name: 'Anna').id
 }

 ukranian_2 = {
  description: "Here you'll learn: how to say which country something/someone is in, how to conjugate regular verbs ending in -are in the plural and the difference between in and a with cities and countries",
  level: "A2",
  start_at: start_time_6,
  end_at: start_time_6 + 1.hour,
  language_id: Language.find_by(name: 'Ukranian').id,
  teacher_id: Teacher.find_by(name: 'Anna').id
 }

korean_1 = {
  description: "Here you'll learn: the vocabulary from the past two lessons the forms of the verb '감사합니다' negation",
  level: "B1",
  start_at: start_time_7,
  end_at: start_time_7 + 1.hour,
  language_id: Language.find_by(name: 'Korean').id,
  teacher_id: Teacher.find_by(name: 'Soojin').id }

korean_2 = {
    description: "Here you'll learn: the intonation in statements and questions",
    level: "B2",
    start_at: start_time_8,
    end_at: start_time_8 + 1.hour,
    language_id: Language.find_by(name: 'Korean').id,
    teacher_id: Teacher.find_by(name: 'Soojin').id }

german_1 = {
  description: "Here you'll learn: some common verbs of movement how to form the perfekt using partizip II + past participle",
  level: "C1",
  start_at: start_time_9,
  end_at: start_time_9 + 1.hour,
  language_id: Language.find_by(name: 'German').id,
  teacher_id: Teacher.find_by(name: 'Eric').id }

german_2 = {
  description: "Here you'll learn: Guten Morgen, Guten Tag, Guten Abend und Gute Nacht",
  level: "A1",
  start_at: start_time_10,
  end_at: start_time_10 + 1.hour,
  language_id: Language.find_by(name: 'German').id,
  teacher_id: Teacher.find_by(name: 'Eric').id }

japanese_1 = {
  description: "Here you'll learn: how to order food, how to buy in a supermarket and how to pay",
  level: "B1",
  start_at: start_time_11,
  end_at: start_time_11 + 1.hour,
  language_id: Language.find_by(name: 'Japanese').id,
  teacher_id: Teacher.find_by(name: 'Akane').id }

japanese_2 = {
  description: "Here you'll learn: to talk about health, the singular forms and how to use them",
  level: "B1",
  start_at: start_time_12,
  end_at: start_time_12 + 1.hour,
  language_id: Language.find_by(name: 'Japanese').id,
  teacher_id: Teacher.find_by(name: 'Akane').id }

[italian_1, italian_2, italian_3, italian_4, ukranian_1, ukranian_2, korean_1, korean_2, german_1, german_2, japanese_1, japanese_2].each do |attributes|
  course = Course.create!(attributes)
  puts "Created! #{course.level}"
end

# done!
puts "Finished!"
