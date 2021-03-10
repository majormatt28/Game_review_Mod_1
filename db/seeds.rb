Owner.destroy_all
Review.destroy_all
VideoGame.destroy_all

hamstars = Owner.create(name: "Hamstars", password: "abc123")
maseo = Owner.create(name: "Maseo", password: "fafnir")
tauros = Owner.create(name: "Tauros", password: "april")
bob = Owner.create(name: "bob", password: "lad")


