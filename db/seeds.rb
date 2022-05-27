
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)require 'open-uri'
require "open-uri"

puts "Cleaning database..."
Atelier.destroy_all
User.destroy_all
Reservation.destroy_all

puts "Creating users..."
user1 = User.create(first_name: "Frida", last_name: "Kahlo", address: "23 rue du Général, 75010 Paris", phone_number: "0723785439", email: "kahlo@gmail.com", password: "toto2022")
file1 = URI.open("https://fr.wikipedia.org/wiki/Frida_Kahlo#/media/Fichier:Frida_Kahlo,_by_Guillermo_Kahlo.jpg")
user1.avatar.attach(io: file1, filename: "nes.png", content_type: "image/png")
user1.save!

user2 = User.create(first_name: "Jacques", last_name: "Martin", address: "78 rue des plantes, 75006 Paris", phone_number: "0667093878", email: "martin@gmail.com", password: "toto2022")
file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Nicolas_Sarkozy_in_2010.jpg/640px-Nicolas_Sarkozy_in_2010.jpg")
user2.avatar.attach(io: file2, filename: "nes.png", content_type: "image/png")
user2.save!

user3 = User.create(first_name: "Elodie", last_name: "Gossuin", address: "1 rue Bearn, 92210 Saint Cloud", phone_number: "0756452390", email: "elodiegossuin@gmail.com", password: "toto2022")
file3 = URI.open("https://fr.wikipedia.org/wiki/%C3%89lodie_Gossuin#/media/Fichier:Elodie_Gossuin_juin_2001_(cropped).jpg")
user3.avatar.attach(io: file3, filename: "nes.png", content_type: "image/png")
user3.save!

user4 = User.create(first_name: "Cyril", last_name: "Hanouna", address: "88 Rue Thiers, 92100 Boulogne-Billancourt", phone_number: "0669423544", email: "cyrilhabibi@caramail.com", password: "toto2022")
file4 = URI.open("https://fr.wikipedia.org/wiki/Cyril_Hanouna#/media/Fichier:Pieds_dans_le_plat_hanouna_2_(cropped).jpg")
user4.avatar.attach(io: file4, filename: "nes.png", content_type: "image/png")
user4.save!

user5 = User.create(first_name: "Salvador", last_name: "Dali", address: "11 Rue Poulbot, 75018 Paris", phone_number: "0178256784", email: "dali1904@wanadoo.fr", password: "toto2022")
file5 = URI.open("https://fr.wikipedia.org/wiki/Salvador_Dal%C3%AD#/media/Fichier:Dali_Allan_Warren.jpg")
user5.avatar.attach(io: file5, filename: "nes.png", content_type: "image/png")
user5.save!

user6 = User.create(first_name: "Auguste", last_name: "Rodin", address: "77 Rue de Varenne, 75007 Paris", phone_number: "0144186110", email: "sculpture@yahoo.com", password: "toto2022")
file6 = URI.open("https://fr.wikipedia.org/wiki/Le_Penseur#/media/Fichier:Le_Penseur_in_the_Jardin_du_Mus%C3%A9e_Rodin,_Paris_March_2014.jpg")
user6.avatar.attach(io: file6, filename: "nes.png", content_type: "image/png")
user6.save!



puts "Users created"


puts "Creating ateliers..."

atelier1 = { name: "Biscuit Atelier", address: "261 rue du Faubourg Saint Antoine - 75011 Paris", style: "Atelier de poterie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 120, user: User.last }
atelier2 = { name: "Kim Lê", address: "73 rue du Poteau - 75018 Paris", style: "Atelier de poterie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 110, user: user1 }
atelier3 = { name: "Atelier chemins de la céramique", address: "165, rue de Paris - 93100 Montreuil", style: "Atelier de poterie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 90, user: user3 }
atelier4 = { name: "Atelier Céramique des 3T ", address: "64 bd Jeanne d’Arc 93100 Montreuil ", style: "Atelier de poterie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 150, user: user3}
atelier5 = { name: "Chamotte", address: "13 rue Veron - 75018 Paris", style: "Atelier de poterie", details:"Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 115, user: user4 }
atelier6 = { name: "Arielle de Gasquet", address: "33 rue Bezout - 75014 Paris", style: "Atelier de poterie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 100, user: user24 }
atelier7 = { name: "Atelier IDC", address: "45 rue de Wattignies - 75012 Paris", style: "Atelier de cuir", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 90, user: user2 }
atelier8 = { name: "Studio Invenio Flory", address: "4 Rue Jean-Baptiste Clément - 93310 Le Pré-Saint-Gervais", style: "Atelier broderie", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 140, user: user2 }
atelier9 = { name: "Tizozio Labo Photo", address: "40 Rue Laffitte - 75009 Paris", style: "atelier photographie", details:"Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 120, user: user5 }
atelier10 = { name: "Atelier de tissage Kaydara", address: "30 rue Rousselet - 75007 Paris", style: "Atelier de tissage", details: "Nous mettons à votre disposition un lieu créatif et chaleureux où il est possible de venir creer vos objets en céramique brut appelé biscuit. Materiels sur place : Tour de potier, Cabine d’emaillage, Tournette de table, Balance de précision au 1/100e, Ebauchoirs en bois, Mirettes tranchantes, plates et rondes, Barbotine papier, Eponge emmanchée si vous faites de grandes pièces ou des pièces au col fermé.", price_per_day: 80, user: user5 }

atelier_one = Atelier.new(atelier1)
file1 = URI.open("https://images.unsplash.com/photo-1577594212897-041ace3261aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
file2 = URI.open("https://images.unsplash.com/photo-1572725394982-fbee32027b77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
file3 = URI.open("https://images.unsplash.com/photo-1528466829416-7c2576152a09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
atelier_one.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_one.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_one.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_one.save!

atelier_two = Atelier.new(atelier2)
file1 = URI.open("https://images.squarespace-cdn.com/content/v1/5cc701c1db4dd35085b9307b/1624898778716-YR7H7TBP5YU6220PWBLC/IMG_9422.jpg?format=750w")
file2 = URI.open("https://images.squarespace-cdn.com/content/v1/5cc701c1db4dd35085b9307b/1649678646618-QASHQH3IFTOUO31TNX4U/image-asset.jpeg")
file3 = URI.open("https://images.squarespace-cdn.com/content/v1/5cc701c1db4dd35085b9307b/1624900982250-96NKFAQ8A94TWD158HB8/Portrait+%C2%A9+Madeleine+Froment.jpg?format=1500w")
atelier_two.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_two.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_two.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_two.save!

atelier_three = Atelier.new(atelier3)
file1 = URI.open("https://images.unsplash.com/photo-1590605105526-5c08f63f89aa?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170")
file2 = URI.open("https://images.unsplash.com/photo-1595351298020-038700609878?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170")
file3 = URI.open("https://images.unsplash.com/photo-1577594212897-041ace3261aa?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170")
atelier_three.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_three.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_three.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_three.save!

atelier_four = Atelier.new(atelier4)
file1 = URI.open("https://images.squarespace-cdn.com/content/v1/5ca36712b7c92cf7dc84c69c/1554217206406-EG5JG4JSLJNZX41ARE60/atelier-ceramique-vincennes-cours-poterie-paris-montreuil-fontenay-9590.jpg?format=1500w")
file2 = URI.open("https://images.squarespace-cdn.com/content/v1/5ca36712b7c92cf7dc84c69c/1554364475592-F3CNE54683M797S26K7W/atelier-ceramique-vincennes-cours-poterie-paris-montreuil-fontenay-9523-2.jpg?format=1500w")
file3 = URI.open("https://images.squarespace-cdn.com/content/v1/5ca36712b7c92cf7dc84c69c/1554217363561-ZN0LCSORD702DEUTIU5X/atelier-ceramique-vincennes-cours-poterie-paris-montreuil-fontenay-2437.jpg?format=1500w")
atelier_four.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_four.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_four.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_four.save!

atelier_five = Atelier.new(atelier5)
file1 = URI.open("https://www.montmartre-addict.com/wp-content/uploads/2020/07/B761EC3F-3086-4CB8-BC36-212634E77B68_1_105_c.jpeg")
file2 = URI.open("https://www.montmartre-addict.com/wp-content/uploads/2020/07/82DACF2F-0F21-4D64-8E28-683889371BDA_1_105_c.jpeg")
file3 = URI.open("https://www.montmartre-addict.com/wp-content/uploads/2020/07/8259C6E3-62A8-41D4-A805-6EE6AC654EA1_1_105_c.jpeg")
atelier_five.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_five.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_five.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_five.save!

atelier_six = Atelier.new(atelier6)
file1 = URI.open("https://i.pinimg.com/736x/62/66/23/62662314224167303433c15682e37053.jpg")
file2 = URI.open("https://i.ytimg.com/vi/sDTQgn2I1qA/maxresdefault.jpg")
file3 = URI.open("https://cloud.thegarnered.com/Designers-Profiles/Arielle-de-Gasquet/Gallery/_galleryLarge/arielledegasket-studio-the-garnered-52.jpg?mtime=20181104195815")
atelier_six.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_six.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_six.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_six.save!

atelier_seven = Atelier.new(atelier7)
file1 = URI.open("https://images.squarespace-cdn.com/content/v1/57e25c6c15d5db15173a965e/1479551790286-PVM4KD3YKWDX8H0KUD6R/selection-cuir-peausserie-locre-paris-locre-cuir-maison-locre-maroquinerie?format=750w")
file2 = URI.open("https://images.squarespace-cdn.com/content/v1/57e25c6c15d5db15173a965e/1478265228043-JMN231YS52UCLNYCW48Z/outils-maroquinerie-ciseaux-locre-paris-locre-cuir-maison-locre-maroquinerie?format=750w")
file3 = URI.open("https://images.squarespace-cdn.com/content/v1/57e25c6c15d5db15173a965e/1479552223286-DS3EV54SN839QO4Y2M4N/ceinture-enchappe-maroquinerie-main-locre-paris-locre-cuir-maison-locre-maroquinerie?format=1000w")
atelier_seven.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_seven.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_seven.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_seven.save!

atelier_eight = Atelier.new(atelier8)
file1 = URI.open("https://images.unsplash.com/photo-1476683874822-744764a2438f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740")
file2 = URI.open("https://images.unsplash.com/photo-1629442214769-c4f01458bf04?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740")
file3 = URI.open("https://images.unsplash.com/photo-1512909315288-c1bcb1ebb9da?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742")
atelier_eight.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_eight.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_eight.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_eight.save!

atelier_nine = Atelier.new(atelier9)
file1 = URI.open("https://www.unidivers.fr/wp-content/uploads/2020/11/atelier-labo-photo-argentique-pour-adolescents-et-adultes-centre-paris-anim-rebeval-paris.webp")
file2 = URI.open("http://www.tizozio.fr/images/labo/labo-19-big.jpg")
file3 = URI.open("http://www.tizozio.fr/images/labo/labo-1-big.jpg")
atelier_nine.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
atelier_nine.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
atelier_nine.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_nine.save!

atelier_ten = Atelier.new(atelier10)
file1 = URI.open("https://www.ensad.fr/sites/default/files/styles/adaptive_width_719/adaptive-image/public/dlc_9573_1.jpg?itok=hISGcOuA")
# file2 = URI.open("https://www.paris-ateliers.org/thumb/?q=90&zc=1&w=1015&h=500&src=/fichier/i_diapo/1331/p1260964.jpg&f=jpg")
# file3 = URI.open("https://www.paris-ateliers.org/thumb/?q=90&zc=1&w=1015&h=500&src=/fichier/i_diapo/1334/p1260957.jpg&f=jpg")
atelier_ten.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
# atelier_ten.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
# atelier_ten.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
atelier_ten.save!

puts "Ateliers created"
puts " Vous etes trop forts!!!!!"
