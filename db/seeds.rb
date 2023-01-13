require "open-uri"
Booking.destroy_all
Exam.destroy_all
Habit.destroy_all
Recipe.destroy_all
Report.destroy_all
User.destroy_all

user1 = User.create!(
  email: "franciscogiacchi@outlook.com",
  password: "123456",
  name: "Francisco",
  last_name: "Giacchi",
  address: "Mitre 315",
  weight: "65",
  height: "165",
  date_of_birth: "1989-04-08",
  gender: "male",
  phone_number: "+5493435430718",
  blood_group: "0",
  blood_type: "-"
)
# photo.attach nos hace usar cloudinary: config.active_storage.service = :cloudinary (linea 38 del development.rb)

file = URI.open("https://avatars.githubusercontent.com/u/96851608?v=4")
user1.photo.attach(io: file, filename: "fran.png", content_type: "image/png")
puts "usuario: #{user1.email}"

user2 = User.create!(
  email: "michelle1999madrid@gmail.com",
  password: "123456",
  name: "Michelle",
  last_name: "Madrid",
  address: "Las Heras 2330",
  weight: "65",
  height: "165",
  date_of_birth: "1999-09-17",
  gender: "female",
  phone_number: "+5493435430799",
  blood_group: "0",
  blood_type: "-"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
user2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")
puts "usuario: #{user2.email}"


# BOOKINGS
# crear 3 bokkings para user1 y 5 para user2

booking = Booking.create!(
  user_id: user1.id,
  title: "Turno clinico",
  date: "2023-01-15",
  hour: "17:30",
  details: "Control clinico",
  address: "Esquina Segurola y Havanna"
)

booking1 = Booking.create!(
  user_id: user1.id,
  title: "Turno clinico",
  date: "2023-01-15",
  hour: "17:30",
  details: "Control clinico",
  address: "Esquina Segurola y Havanna"
)

booking2 = Booking.create!(
  user_id: user1.id,
  title: "Turno psicologo",
  date: "2023-01-10",
  hour: "17:30",
  details: "Turno semanal",
  address: "Esquina Segurola y Havanna"
)

booking3 = Booking.create!(
  user_id: user2.id,
  title: "Turno gastroenterologo",
  date: "2023-01-21",
  hour: "16:30",
  details: "Control anual de sistema digestivo",
  address: "Esquina Segurola y Havanna"
)

booking4 = Booking.create!(
  user_id: user2.id,
  title: "Turno clinico",
  date: "2023-01-25",
  hour: "15:30",
  details: "Control clinico",
  address: "Alameda de la Federacion 233"
)

booking5 = Booking.create!(
  user_id: user2.id,
  title: "Turno psoquiatra",
  date: "2023-01-15",
  hour: "11:30",
  details: "Turno mensual",
  address: "Alameda de la Federacion 233"
)

booking6 = Booking.create!(
  user_id: user2.id,
  title: "Turno otorrinonaringologo",
  date: "2023-01-12",
  hour: "14:30",
  details: "Control de oidos",
  address: "Alameda de la Federacion 233"
)

booking7 = Booking.create!(
  user_id: user2.id,
  title: "Turno kinesiologo",
  date: "2023-01-13",
  hour: "16:00",
  details: "Rehabilitacion de contractura muscular",
  address: "Alameda de la Federacion 233"
)
puts "creados 8 turnos medicos"

# EXAMENES
# luego 3 exams para user1 y 2 para user2 (foto anexada de radiografia en uno de los examenes)

exam = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Tocada de huevos",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam1 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Mamografia",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam1.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam2 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Ecografia",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam3 = Exam.create!(
  user_id: user2.id,
  date: "2023-01-13",
  name: "Colonoscopia",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam3.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam4 = Exam.create!(
  user_id: user2.id,
  date: "2023-01-13",
  name: "Radiografia de torax",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam4.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

puts "creados 5 examenes medicos"

# HABITOS
# habits: 4 a cada uno

habit = Habit.create!(
  user_id: user1.id,
  habit_type: "Smoking",
  quantity: 1,
  frequency: "mensual"
)

habit1 = Habit.create!(
  user_id: user1.id,
  habit_type: "Drinking",
  quantity: 2,
  frequency: "mensual"
)

habit2 = Habit.create!(
  user_id: user1.id,
  habit_type: "Running",
  quantity: 1,
  frequency: "semanal"
)

habit3 = Habit.create!(
  user_id: user1.id,
  habit_type: "Meditation",
  quantity: 2,
  frequency: "diario"
)

habit4 = Habit.create!(
  user_id: user2.id,
  habit_type: "Meditation",
  quantity: 3,
  frequency: "mensual"
)

habit5 = Habit.create!(
  user_id: user2.id,
  habit_type: "Smoking",
  quantity: 3,
  frequency: "mensual"
)

habit6 = Habit.create!(
  user_id: user2.id,
  habit_type: "Running",
  quantity: 1,
  frequency: "mensual"
)

habit7 = Habit.create!(
  user_id: user2.id,
  habit_type: "Drinking",
  quantity: 1,
  frequency: "diario"
)
puts "creados 8 habitos"

# RECETAS
# recipe: 2 recetas a user1 (buscar foto de receta medica y subir 2)

recipe = Recipe.create!(
  user_id: user1.id,
  date: "2023-01-03",
  doctor_name: "Rene Favaloro"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
recipe.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe2 = Recipe.create!(
  user_id: user1.id,
  date: "2023-01-05",
  doctor_name: "Cormillot"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
recipe2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

puts "creadas 2 recetas medicas"


# REPORTES
# reports: 2 para user1

report = Report.create!(
  user_id: user1.id,
  title: "Informe neurologo",
  date: "2023-01-06",
  category: "Neurologia"
)

report1 = Report.create!(
  user_id: user1.id,
  title: "Informe medico clinico",
  date: "2023-01-10",
  category: "Clinica"
)

puts "creados 2 informes/reportes medicos"
