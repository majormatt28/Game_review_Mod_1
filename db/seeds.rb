Owner.destroy_all
Review.destroy_all
VideoGame.destroy_all

#owners
hamstars = Owner.create(name: "Hamstars", password: "abc123")
maseo = Owner.create(name: "Maseo", password: "fafnir")
tauros = Owner.create(name: "Tauros", password: "april")
bob = Owner.create(name: "bob", password: "lad")


#video games
persona_five = VideoGame.create(title: "Persona 5", genre: "RPG", rating: "M")
the_witcher = VideoGame.create(title: "The Witcher 3", genre: "RPG", rating: "M")
diablo = VideoGame.create(title: "Diablo 3", genre: "RPG", rating: "M")

nba_live = VideoGame.create(title: "NBA Live", genre: "Sport", rating: "E")
madden = VideoGame.create(title: "Madden", genre: "Sport", rating: "E")
fifa = VideoGame.create(title: "Fifa", genre: "Sport", rating: "E")

xcom = VideoGame.create(title: "XCOM", genre: "Strategy", rating: "M" )
humankind = VideoGame.create(title: "Humankind", genre: "Strategy", rating: "M")
stellaris = VideoGame.create(title: "Stellaris", genre: "Strategy", rating: "T")

#join tables - reviews
r1 = Review.create(owner_id: hamstars.id, video_game_id: persona_five.id, score: 4, comment: "This is a fun game!")
r2 = Review.create(owner_id: hamstars.id, video_game_id: the_witcher.id, score: 3, comment: "Could be better...")
r3 = Review.create(owner_id: hamstars.id, video_game_id: diablo.id, score: 5, comment: "Really like this one GOTY!")

r4 = Review.create(owner_id: bob.id, video_game_id: persona_five.id, score: 4, comment: "This is a fun ga")
r5 = Review.create(owner_id: maseo.id, video_game_id: persona_five.id, score: 5, comment: "This is a ")
r6 = Review.create(owner_id: tauros.id, video_game_id: persona_five.id, score: 3, comment: "fugazi")
