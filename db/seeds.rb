# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
House.destroy_all

gryffindor = House.create(name:"Gryffindor", img_url:"http://images1.wikia.nocookie.net/__cb20120922143611/harrypotter/images/7/70/G_final.jpg")
hufflepuff = House.create(name:"Hufflepuff", img_url:"http://images3.wikia.nocookie.net/__cb20111027164827/harrypotter/images/3/3f/H_final.jpg")
ravenclaw = House.create(name:"Ravenclaw", img_url:"http://images2.wikia.nocookie.net/__cb20111021043857/harrypotter/images/d/da/R_final.jpg")
slytherin = House.create(name:"Slytherin", img_url:"http://images3.wikia.nocookie.net/__cb20111027165214/harrypotter/images/d/da/S_final.jpg")

trey = Student.create(name: "Trey Hoover", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/trey_hoover.PNG'), house: slytherin)
harry = Student.create(name: "Harry Potter", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/harry_potter.PNG'), house: gryffindor)
ron = Student.create(name: "Ron Weasley", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/ron_weasley.PNG'), house: gryffindor)
hermione = Student.create(name: "Hermione Granger", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/hermione_granger.PNG'), house: gryffindor)

luna = Student.create(name: "Luna Lovegood", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/luna_lovegood.PNG'), house: ravenclaw)
cho = Student.create(name: "Cho Chang", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/cho_chang.PNG'), house: ravenclaw)

cedric = Student.create(name: "Cedric Diggory", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/cedric_diggory.PNG'), house: hufflepuff)

draco = Student.create(name: "Draco Malfoy", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/draco_malfoy.PNG'), house: slytherin)
pansy = Student.create(name: "Pansy Parkinson", avatar: File.open('/Users/treyhoover/Dev/Seed/avatars/pansy_parkinson.PNG'), house: slytherin)