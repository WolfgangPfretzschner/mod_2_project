# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Interest.destroy_all
Cohort.destroy_all

# Seed Cohorts:
staff_cohort = Cohort.create(name: "Staff", current_module: nil, start_date: nil, end_date: nil)

cohort1 = Cohort.create(name: "070418", current_module: "Module 1", start_date: 2018-07-04, end_date: '2018-10-14')

cohort2 = Cohort.create(name: "Elevator Code", current_module: "Module 2", start_date: 2018-06-04, end_date: '2018-09-14')

# Seed Staff:
tashawn = Person.create(name: "Tashawn Williams", email: "tashawn@flatironschool.com", slack: "@Tashawn", classification: "TCF", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/3OJmbxP.png")

graham = Person.create(name: "Graham Troyer-Joy", email: "graham@flatironschool.com", slack: "@telegraham", classification: "Lead Instructor", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/WeI4I5Z.png")

zach = Person.create(name: "Zach Vary", email: "zach@flatironschool.com", slack: "@zach", classification: "TCF", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/FR2uJb3.png")

vicky = Person.create(name: "Vicky Huang", email: "vicky@flatironschool.com", slack: "@vicky", classification: "TCF", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/GoSiEZJ.png")

andrew = Person.create(name: "Andrew Cohn", email: "andrew@flatironschool.com", slack: "@andrew", classification: "Lead Instructor", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/wFrJrwN.png")

jason = Person.create(name: "Jason Decker", email: "jason@flatironschool.com", slack: "@jason", classification: "Lead Instructor", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/1MqSe0f.png")

melissa = Person.create(name: "Melissa Schwartz", email: "melissa@flatironschool.com", slack: "@Melissa Schwartz", classification: "Staff", cohort: Cohort.all[0], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/b4qeSjL.png")

# Seed Students:
laura = Person.create(name: "Laura Nadolski", email: "laura@flatironschool.com", slack: "@Laura Nadolski", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/aOHad8r.png")

jee = Person.create(name: "Jee Lee", email: "jee@flatironschool.com", slack: "@Jee Lee", classification: "Angel", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/kBWx5zF.png")

wolfgang = Person.create(name: "Wolfgang Pfretzschner", email: "wolfgang@flatironschool.com", slack: "@Wolfgang Pfretzschner", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/9CqNGEQ.png")

noah = Person.create(name: "Noah Berman", email: "noah@flatironschool.com", slack: "@Noah", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/ABW4S8V.png")

jarrett = Person.create(name: "Jarret Bryan", email: "jarrett@flatironschool.com", slack: "@Jarrett", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/XwojxIi.png")

mary_kate = Person.create(name: "Mary-Kate James", email: "mary-kate@flatironschool.com", slack: "@mary-kate", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/qjPLpQ2.png")

sandy = Person.create(name: "Sandy Edwards", email: "sandy@flatironschool.com", slack: "@Sandy", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/i5vytz7.png")

alan = Person.create(name: "Alan Golman", email: "alan@flatironschool.com", slack: "@Alan", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/UtCuQHY.png")

alex = Person.create(name: "Alexandra Hernandez", email: "alex@flatironschool.com", slack: "@Alex", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/bL3mmE1.png")

isaac = Person.create(name: "Isaac Fiore", email: "isaac@flatironschool.com", slack: "@Isaac", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/FGNe2mH.png")

brad = Person.create(name: "Brad Newman", email: "brad@flatironschool.com", slack: "@Brad", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/jriEG8f.png")

leann = Person.create(name: "Leann Kim", email: "leann@flatironschool.com", slack: "@Leann", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/C0jSErC.png")

shing = Person.create(name: "Shing Wong", email: "shing@flatironschool.com", slack: "@Shing", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/1Um7OFz.png")

michael = Person.create(name: "Michael O'Brien", email: "michael@flatironschool.com", slack: "@Michael", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/LOawKpF.png")

sarah = Person.create(name: "Sarah Rivas", email: "sarah@flatironschool.com", slack: "@Sarah", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/3tXSA4M.png")

chang = Person.create(name: "Chang Lim", email: "chang@flatironschool.com", slack: "@Chang", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/ofZ95wo.png")

david = Person.create(name: "David Zeit", email: "david@flatironschool.com", slack: "@David", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/3PGUY7m.png")

kurt = Person.create(name: "Kurt Bauer", email: "kurt@flatironschool.com", slack: "@Kurt", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/lcPDHgM.png")

sree = Person.create(name: "Sree Mudunuri", email: "sree@flatironschool.com", slack: "@Sree", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/m1wKXb8.png")

devin = Person.create(name: "Devin Pierce", email: "devin@flatironschool.com", slack: "@Devin", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/KMvXYQi.png")

risher = Person.create(name: "Risher Randall", email: "risher@flatironschool.com", slack: "@Risher", classification: "Student", cohort: Cohort.all[1], birthday: 2010-03-03, password: "1234", image_url: "https://i.imgur.com/IFpqVbv.png")

# Seed Interests:
biking = Interest.create(name: "biking")
cooking = Interest.create(name: "cooking")
cats = Interest.create(name: "cats")
dogs = Interest.create(name: "dogs")
