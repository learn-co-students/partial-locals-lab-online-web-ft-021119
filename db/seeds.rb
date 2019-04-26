student_names = ['Bob', 'Robert', 'Roberta', 'Shirley', 'Shelby']

student_names.each do |name|
  Student.create(name: name, hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
end


75.times do
  Student.create(name: Faker::Name.name, hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
end
Classroom.create(course_name: 'Math', semester: "Spring #{Time.now.year}")
Classroom.create(course_name: 'English', semester: "Fall #{Time.now.year}")
Classroom.create(course_name: 'Science', semester: "Spring #{Time.now.year}")
Classroom.create(course_name: 'Chemistry', semester: "Fall #{Time.now.year}")


Classroom.all.each_with_index do |classroom, i|
  classroom.students << [Student.limit(8).offset(i*2)]
end
