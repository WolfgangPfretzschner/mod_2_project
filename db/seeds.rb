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

cohort1 = Cohort.create(name: "070418", current_module: "Module 1", start_date: 2018-07-04, end_date: '2018-10-14')

cohort2 = Cohort.create(name: "Elevator Code", current_module: "Module 2", start_date: 2018-06-04, end_date: '2018-09-14')

laura = Person.create(name: "Laura Nadolski", email: "laura.nadolski@flatironschool.com", slack: "@lauranadolski", classification: "Student", cohort_id: 1, birthday: nil, has_account?: true)

tashawn = Person.create(name: "Tashawn", email: "tashawn@flatironschool.com", slack: "@tashawn", classification: "Teacher", cohort_id: 1, birthday: nil, has_account?: true)

jee = Person.create(name: "Angel", email: "angel@flatironschool.com", slack: "@angel", classification: "Angel", cohort_id: 1, birthday: nil, has_account?: false)

melissa = Person.create(name: "Melissa", email: "melissa@flatironschool.com", slack: "@melissa", classification: "Staff",  cohort_id: 1, birthday: nil, has_account?: true)

wolfgang = Person.create(name: "Wolfgang Pfretzschner", email: "wolfgang@flatironschool.com", slack: "@wolfgang", classification: "Student", cohort_id: 1, birthday: nil, has_account?: true)

biking = Interest.create(name: "biking")
cooking = Interest.create(name: "cooking")
cats = Interest.create(name: "cats")
dogs = Interest.create(name: "dogs")
