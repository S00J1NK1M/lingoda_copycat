require "open-uri"

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
spanish = { name: "Spanish" }
portuguese = { name: "Portuguese" }
french = { name: "French" }
finnish = { name: "Finnish" }
japanese = { name: "Japanese" }
chinese = { name: "Chinese" }
polish = { name: "Polish" }
danish = { name: "Danish" }
arabic = { name: "Arabic" }
greek = { name: "Greek" }
turkish = { name: "Turkish" }

[italian, ukranian, korean, english, german, spanish, portuguese, french, finnish, japanese, chinese, polish, danish, arabic, greek, turkish].each do |attributes|
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
shaka = { name: "Shaka" }
mari = { name: "Mari" }
julia = { name: "Julia" }
marianna = { name: "Marianna" }
oliver = { name: "Oliver" }
jose = { name: "Jose" }
olga = { name: "Olga" }
maria = { name: "Maria" }

[matteo, anna, eric, soojin, akane, cuilu, ardian, shakar, arianna, juan, shamaila, shaka, mari, julia, marianna, oliver, jose, olga, maria].each do |attributes|
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
start_time_13 = DateTime.now + (rand * 21)

italian_A1 = {
  description: "Here you'll learn: how to say which country something/someone is in, how to conjugate regular verbs ending in -are in the plural and the difference between in and a with cities and countries",
  level: "A1",
  start_at: start_time_1,
  end_at: start_time_1 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id }

course_italian_A1 = Course.create(italian_A1)
img = URI.open("https://plus.unsplash.com/premium_photo-1676120651989-f2e76c2a20df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_italian_A1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_italian_A1.save

italian_A2 = {
  description: "Here you'll learn: a few simple words you can use in everyday conversation, which nouns are masculine and which are feminine",
  level: "A2",
  start_at: start_time_2,
  end_at: start_time_2 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Arianna').id
}

course_italian_A2 = Course.create(italian_A2)
img = URI.open("https://plus.unsplash.com/premium_photo-1661962292128-879bb496ce17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_italian_A2.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_italian_A2.save

italian_B1 = {
  description: "Here you'll review: the vocabulary from the last two lessons, the forms of the verb abitare, feminine and masculine nouns",
  level: "B1",
  start_at: start_time_3,
  end_at: start_time_3 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id
}
course_italian_B1 = Course.create(italian_B1)
img = URI.open("https://images.unsplash.com/photo-1520175480921-4edfa2983e0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2934&q=80")
course_italian_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_italian_B1.save

italian_B1 = {
  description: "Here you'll learn: to talk about which country you're from",
  level: "B1",
  start_at: start_time_4,
  end_at: start_time_4 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Arianna').id
}

course_italian_B1 = Course.create(italian_B1)
img = URI.open("https://images.unsplash.com/photo-1528114039593-4366cc08227d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80")
course_italian_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_italian_B1.save

ukranian_A2 = {
  description: "Here you'll learn: to say which languages you speak, more words for languages and nationalities, negation",
  level: "A2",
  start_at: start_time_5,
  end_at: start_time_5 + 1.hour,
  language_id: Language.find_by(name: 'Ukranian').id,
  teacher_id: Teacher.find_by(name: 'Anna').id
 }
 course_ukranian_A2 = Course.create(ukranian_A2)
 img = URI.open("https://images.unsplash.com/photo-1559588512-cae70b7dd3d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
 course_ukranian_A2.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
 course_ukranian_A2.save


korean_B1 = {
  description: "Here you'll learn: the vocabulary from the past two lessons the forms of the verb '감사합니다' negation",
  level: "B1",
  start_at: start_time_6,
  end_at: start_time_6 + 1.hour,
  language_id: Language.find_by(name: 'Korean').id,
  teacher_id: Teacher.find_by(name: 'Soojin').id }

course_korean_B1 = Course.create(korean_B1)
img = URI.open("https://images.unsplash.com/photo-1517154421773-0529f29ea451?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_korean_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_korean_B1.save

italian_A1 = {
  description: "test for italian",
  level: "A1",
  start_at: start_time_7,
  end_at: start_time_7 + 1.hour,
  language_id: Language.find_by(name: 'Italian').id,
  teacher_id: Teacher.find_by(name: 'Matteo').id
}

course_italian_A1 = Course.create(italian_A1)
img = URI.open("https://plus.unsplash.com/premium_photo-1676120651989-f2e76c2a20df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_italian_A1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_italian_A1.save

ukranian_A2 = {
  description: "test for ukranian",
  level: "A2",
  start_at: start_time_8,
  end_at: start_time_8 + 1.hour,
  language_id: Language.find_by(name: 'Ukranian').id,
  teacher_id: Teacher.find_by(name: 'Anna').id
 }

course_ukranian_A2 = Course.create(ukranian_A2)
img = URI.open("https://images.unsplash.com/photo-1559588512-cae70b7dd3d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_ukranian_A2.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_ukranian_A2.save

korean_B1 = {
  description: "test for korean",
  level: "B1",
  start_at: start_time_9,
  end_at: start_time_9 + 1.hour,
  language_id: Language.find_by(name: 'Korean').id,
  teacher_id: Teacher.find_by(name: 'Eric').id
}

course_korean_B1 = Course.create(korean_B1)
img = URI.open("https://images.unsplash.com/photo-1517154421773-0529f29ea451?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_korean_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_korean_B1.save

german_C1 = {
  description: "Here you'll learn: some common verbs of movement how to form the perfekt using partizip II + past participle",
  level: "C1",
  start_at: start_time_10,
  end_at: start_time_10 + 1.hour,
  language_id: Language.find_by(name: 'German').id,
  teacher_id: Teacher.find_by(name: 'Eric').id
}

course_german_C1 = Course.create(german_C1)
img = URI.open("https://images.unsplash.com/photo-1581929955747-01a55e458b49?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3132&q=80")
course_german_C1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_german_C1.save

german_A1 = {
  description: "Here you'll learn: Guten Morgen, Guten Tag, Guten Abend und Gute Nacht",
  level: "A1",
  start_at: start_time_11,
  end_at: start_time_11 + 1.hour,
  language_id: Language.find_by(name: 'German').id,
  teacher_id: Teacher.find_by(name: 'Eric').id
}

course_german_A1 = Course.create(german_A1)
img = URI.open("https://images.unsplash.com/photo-1599946347371-68eb71b16afc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
course_german_A1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_german_A1.save

japanese_B1 = {
  description: "Here you'll learn: how to order food, how to buy in a supermarket and how to pay",
  level: "B1",
  start_at: start_time_12,
  end_at: start_time_12 + 1.hour,
  language_id: Language.find_by(name: 'Japanese').id,
  teacher_id: Teacher.find_by(name: 'Akane').id }

  course_japanese_B1 = Course.create(japanese_B1)
  img = URI.open("https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
  course_japanese_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
  course_japanese_B1.save

japanese_B1 = {
  description: "Here you'll learn: to talk about health, the singular forms and how to use them",
  level: "B1",
  start_at: start_time_13,
  end_at: start_time_13 + 1.hour,
  language_id: Language.find_by(name: 'Japanese').id,
  teacher_id: Teacher.find_by(name: 'Akane').id
}

course_japanese_B1 = Course.create(japanese_B1)
img = URI.open("https://images.unsplash.com/photo-1480796927426-f609979314bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2300&q=80")
course_japanese_B1.photo.attach(io: img, filename: "nes.png", content_type: "image/png")
course_japanese_B1.save

# [italian_1, italian_2, italian_3, italian_4, ukranian_1, ukranian_2, korean_1, korean_2, german_1, german_2, japanese_1, japanese_2].each do |attributes|
#   course = Course.create!(attributes)
#   puts "Created! #{course.level}"
# end

# done!
puts "Finished!"
