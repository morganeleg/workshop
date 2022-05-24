# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Atelier.destroy_all

puts "Creating atelierss..."
atelier1 = { name: "Atelier1", address: "2 place du 19 mars 1962 - 93100 Montreuil", style: "Atelier cuisine", details: "Lorem ipsum dolor sit amet. Aut itaque vitae ut facere inventore sit fuga facere aut autem quia aut quidem ipsa. Est eaque nobis est deleniti facilis ut laboriosam omnis a dolor deleniti et quibusdam earum ut sequi quam. Sit quod quia eum labore earum in error explicabo et assumenda enim ut perspiciatis dolorum.", price_per_day: 120 }
atelier2 = { name: "Atelier2", address: "ZI de Blavozi - 43700 St Germain Laprade", style: "Atelier broderie", details: "Aut quaerat temporibus ab quibusdam praesentium aut enim debitis rem sint sint ea omnis quia et totam aspernatur. Et velit libero est dolore itaque est maiores enim qui placeat velit et repudiandae itaque. Aut officiis fugiat aut iusto commodi et itaque rerum sed harum eligendi.", price_per_day: 110 }
atelier3 = { name: "Atelier3", address: "24 rue de la mitrie - 44000 Nantes", style: "Atelier photographie", details: "Lorem ipsum dolor sit amet. Aut itaque vitae ut facere inventore sit fuga facere aut autem quia aut quidem ipsa. Est eaque nobis est deleniti facilis ut laboriosam omnis a dolor deleniti et quibusdam earum ut sequi quam. Sit quod quia eum labore earum in error explicabo et assumenda enim ut perspiciatis dolorum.", price_per_day: 90 }
atelier4 = { name: "Atelier4", address: "15 rue Marc Seguin - 75018 Paris", style: "Atelier de gravure", details: "Aut quaerat temporibus ab quibusdam praesentium aut enim debitis rem sint sint ea omnis quia et totam aspernatur. Et velit libero est dolore itaque est maiores enim qui placeat velit et repudiandae itaque. Aut officiis fugiat aut iusto commodi et itaque rerum sed harum eligendi.", price_per_day: 150 }
atelier5 = { name: "Atelier5", address: "24 rue Louis-Emilie de la tour d'auvergne - 75009 Paris", style: "Atelier photographie argentique", details: "Lorem ipsum dolor sit amet. Aut itaque vitae ut facere inventore sit fuga facere aut autem quia aut quidem ipsa. Est eaque nobis est deleniti facilis ut laboriosam omnis a dolor deleniti et quibusdam earum ut sequi quam. Sit quod quia eum labore earum in error explicabo et assumenda enim ut perspiciatis dolorum.", price_per_day: 115 }
atelier6 = { name: "Atelier6", address: "46 rue du Bac - 75007 Paris", style: "Atelier de tissage", details: "Aut quaerat temporibus ab quibusdam praesentium aut enim debitis rem sint sint ea omnis quia et totam aspernatur. Et velit libero est dolore itaque est maiores enim qui placeat velit et repudiandae itaque. Aut officiis fugiat aut iusto commodi et itaque rerum sed harum eligendi.", price_per_day: 100 }
atelier7 = { name: "Atelier7", address: "12 avenue rapp - 75007 Paris", style: "Atelier de cuir", details: "Lorem ipsum dolor sit amet. Aut itaque vitae ut facere inventore sit fuga facere aut autem quia aut quidem ipsa. Est eaque nobis est deleniti facilis ut laboriosam omnis a dolor deleniti et quibusdam earum ut sequi quam. Sit quod quia eum labore earum in error explicabo et assumenda enim ut perspiciatis dolorum.", price_per_day: 90 }
atelier8 = { name: "Atelier8", address: "44 avenue de la république - 92320 Châtillon", style: "Atelier de poterie", details: "Aut quaerat temporibus ab quibusdam praesentium aut enim debitis rem sint sint ea omnis quia et totam aspernatur. Et velit libero est dolore itaque est maiores enim qui placeat velit et repudiandae itaque. Aut officiis fugiat aut iusto commodi et itaque rerum sed harum eligendi.", price_per_day: 140 }
atelier9 = { name: "Atelier9", address: "10 rue Mignard - 75116 Paris", style: "atelier de textile", details: "Aut quaerat temporibus ab quibusdam praesentium aut enim debitis rem sint sint ea omnis quia et totam aspernatur. Et velit libero est dolore itaque est maiores enim qui placeat velit et repudiandae itaque. Aut officiis fugiat aut iusto commodi et itaque rerum sed harum eligendi.", price_per_day: 120 }
atelier10 = { name: "Atelier10", address: "1 rue de Maupassant - 75116 Paris", style: "Atelier de gravure", details: "Lorem ipsum dolor sit amet. Aut itaque vitae ut facere inventore sit fuga facere aut autem quia aut quidem ipsa. Est eaque nobis est deleniti facilis ut laboriosam omnis a dolor deleniti et quibusdam earum ut sequi quam. Sit quod quia eum labore earum in error explicabo et assumenda enim ut perspiciatis dolorum.", price_per_day: 80 }

[atelier1, atelier2, atelier2, atelier3, atelier4, atelier5, atelier6, atelier7, atelier8, atelier9, atelier10].each do |attributes|
  atelier = Atelier.create!(attributes)
  puts "Created #{atelier.name}"
end
puts "Finished!"
