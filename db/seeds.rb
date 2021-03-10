Owner.destroy_all
Review.destroy_all
VideoGame.destroy_all

hamstars = Owner.create(name: "Hamstars", password: "abc123")
maseo = Owner.create(name: "Maseo", password: "fafnir")
tauros = Owner.create(name: "Tauros", password: "april")
bob = Owner.create(name: "bob", password: "lad")

persona_five = VideoGame.create(title: "Persona 5", genre: "RPG", rating: "M")
the_witcher = VideoGame.create(title: "The Witcher 3", genre: "RPG", rating: "M")
diablo = VideoGame.create(title: "Diablo 3", genre: "RPG", rating: "M")

nba_live = VideoGame.create(title: "NBA Live", genre: "Sport", rating: "E")
madden = VideoGame.create(title: "Madden", genre: "Sport", rating: "E")
fifa = VideoGame.create(title: "Fifa", genre: "Sport", rating: "E")

xcom = VideoGame.create(title: "XCOM", genre: "Strategy", rating: "M" )
humankind = VideoGame.create(title: "Humankind", genre: "Startegy", rating: "M")
stellaris = VideoGame.create(title: "Stellaris", genre: "Startegy", rating: "T")


r1 = Review.create(owner_id: 1, video_game_id: 1, rating: 4, comment: "This is a fun game!")
r1 = Review.create(owner_id: 3, video_game_id: 4, rating: 3, comment: "Could be better...")
r1 = Review.create(owner_id: 4, video_game_id: 5, rating: 5, comment: "Really like this one GOTY!")
