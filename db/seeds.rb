Owner.destroy_all
Review.destroy_all
VideoGame.destroy_all

hamstars = Owner.create(name: "Hamstars", password: "abc123")
maseo = Owner.create(name: "Maseo", password: "fafnir")
tauros = Owner.create(name: "Tauros", password: "april")
bob = Owner.create(name: "bob", password: "lad")

persona_five = VideoGame.create(title: "Persona 5", genre: "RPG", rating: "M" )
the_witcher = VideoGame.create(title: "The Witcher 3", genre: "RPG", rating: "M" )
diablo = VideoGame.create(title: "Diablo 3", genre: "RPG", rating: "M" )

r1 = Review.create(owner_id: 1, video_game_id: 1, rating: 4, comment: "This is a fun game!")
