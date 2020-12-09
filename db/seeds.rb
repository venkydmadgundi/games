# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Theme.create([{ name: "War",active: true }, 
	      { name: "Sci-Fi",active: true },
	      { name: "Horror",active: true },
	      { name: "Crime",active: true },
	      { name: "Mystery",active: true }]) 

Genre.create([{ name: "Racing",active: true }, 
	      { name: "Strategy",active: true },
	      { name: "Adventure",active: true },
	      { name: "Sports",active: true },
	      { name: "Shooting",active: true }]) 

Violence.create([{ name: "None",active: true }, 
		 { name: "Low",active: true },
		 { name: "Medium",active: true },
		 { name: "High",active: true },
		 { name: "Extreme",active: true }])


Game.create([{name: "Gran Turismo Sport",url: "https://i.imgur.com/fpVLFsO.jpg",target_group: "3",theme_id: Theme.where(name: "Mystery").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "Stellaris",url: "https://i.imgur.com/1mlBaBs.jpg",target_group: "13",theme_id: Theme.where(name: "War").first.id,genre_id: Genre.where(name:"Strategy").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "Phoenix Wright Ace Attorney",url: "https://i.imgur.com/UCiQTbs.jpg",target_group: "18",theme_id: Theme.where(name: "Mystery").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "The Last of Us",url: "https://i.imgur.com/b2CMhmT.jpg",target_group: "18",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "The Crew 2",url: "https://i.imgur.com/wm9BdG3.jpg",target_group: "3",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "AO Tennis 2",url: "https://i.imgur.com/7UaiZ6X.jpg",target_group: "18",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Sports").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "PUBG",url: "https://i.imgur.com/oyNh4HG.jpg",target_group: "3",theme_id: Theme.where(name: "Mystery").first.id,genre_id: Genre.where(name:"Shooting").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "Project CARS 2",url: "https://i.imgur.com/n7FZ8XZ.png",target_group: "3",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "Madden NFL 20",url: "https://i.imgur.com/mYTrozi.jpg",target_group: "13",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Sports").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "F1 2019",url: "https://i.imgur.com/Eyh23a1.png",target_group: "3",theme_id: Theme.where(name: "Crime").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "Planet Coaster",url: "https://i.imgur.com/0medvFR.jpg",target_group: "13",theme_id: Theme.where(name: "War").first.id,genre_id: Genre.where(name:"Strategy").first.id,violence_id: Violence.where(name:"High").first.id},
	     {name: "Need for Speed: Heat",url: "https://i.imgur.com/iPHkgQu.jpg",target_group: "13",theme_id: Theme.where(name: "Crime").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "Civilization VI",url: "https://i.imgur.com/t9aKHLw.jpg",target_group: "18",theme_id: Theme.where(name: "War").first.id,genre_id: Genre.where(name:"Strategy").first.id,violence_id: Violence.where(name:"High").first.id},
	     {name: "Uncharted 4",url: "https://i.imgur.com/apazESG.png",target_group: "18",theme_id: Theme.where(name: "Crime").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "FIFA 20",url: "https://i.imgur.com/ACrU3fJ.jpg",target_group: "3",theme_id: Theme.where(name: "War").first.id,genre_id: Genre.where(name:"Sports").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "Killzone Shadowfall",url: "https://i.imgur.com/LY8jcfd.jpg",target_group: "13",theme_id: Theme.where(name: "Mystery").first.id,genre_id: Genre.where(name:"Shooting").first.id,violence_id: Violence.where(name:"High").first.id},
	     {name: "Crash Team Racing: Nitro Fueled",url: "https://i.imgur.com/Dywo5tX.jpg",target_group: "18",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "Gears of War 4",url: "https://i.imgur.com/G9gp25N.jpg",target_group: "3",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Shooting").first.id,violence_id: Violence.where(name:"High").first.id},
	     {name: "Forza Horizon 4",url: "https://i.imgur.com/QVq6SAT.jpg",target_group: "13",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Racing").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "Farenheit",url: "https://i.imgur.com/hOv0Fkd.jpg",target_group: "3",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "NBA 2K20",url: "https://i.imgur.com/XyEaW81.jpg",target_group: "13",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Sports").first.id,violence_id: Violence.where(name:"High").first.id},
	     {name: "Rocket League",url: "https://i.imgur.com/ZZXbPq9.jpg",target_group: "18",theme_id: Theme.where(name: "Horror").first.id,genre_id: Genre.where(name:"Sports").first.id,violence_id: Violence.where(name:"Medium").first.id},
	     {name: "XCOM 2",url: "https://i.imgur.com/v1wq052.jpg",target_group: "3",theme_id: Theme.where(name: "Mystery").first.id,genre_id: Genre.where(name:"Strategy").first.id,violence_id: Violence.where(name:"Low").first.id},
	     {name: "Rise of the Tomb Raider",url: "https://i.imgur.com/Fm3OQw2.jpg",target_group: "13",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"None").first.id},
	     {name: "Horizon Zero Dawn",url: "https://i.imgur.com/ZnTnDcG.png",target_group: "18",theme_id: Theme.where(name: "Sci-Fi").first.id,genre_id: Genre.where(name:"Adventure").first.id,violence_id: Violence.where(name:"High").first.id}])

adrian_user = User.create!(name: "Adrian", email: 'adrian@user.com', password: 'password', password_confirmation: 'password', age: 15)
themes_adrian = ["War", "Sci-Fi"]
themes_adrian.each do |theme|
		UsersTheme.create!(user_id: adrian_user.id, theme_id: Theme.where(name: theme).first.id)
end
genres_adrian = ["Shooting", "Sports"]
genres_adrian.each do |genre|
		UsersGenre.create!(user_id: adrian_user.id, genre_id: Genre.where(name: genre).first.id)
end
violences_adrian = ["High", "Medium", "None"]
violences_adrian.each do |violence|
		UsersViolence.create!(user_id: adrian_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_adrian = ["Gears of War 4","Madden NFL 20","NBA 2K20"]
games_adrian.each do |game|
		UsersGame.create!(user_id: adrian_user.id, game_id: Game.where(name: game).first.id)
end

vladimir_user = User.create!(name: "Vladimir", email: 'vladimir@user.com', password: 'password', password_confirmation: 'password', age: 43)
themes_vladimir = ["Horror", "Crime"]
themes_vladimir.each do |theme|
		UsersTheme.create!(user_id: vladimir_user.id, theme_id: Theme.where(name: theme).first.id)
end
genres_vladimir = ["Adventure"]
genres_vladimir.each do |genre|
		UsersGenre.create!(user_id: vladimir_user.id, genre_id: Genre.where(name: genre).first.id)
end
violences_vladimir = ["Extreme", "High", "Medium"]
violences_vladimir.each do |violence|
		UsersViolence.create!(user_id: vladimir_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_vladimir = ["Uncharted 4"]
games_vladimir.each do |game|
		UsersGame.create!(user_id: vladimir_user.id, game_id: Game.where(name: game).first.id)
end

naveen_user = User.create!(name: "Naveen", email: 'naveen@user.com', password: 'password', password_confirmation: 'password', age: 5)
genres_naveen = ["Sports", "Strategy"]
genres_naveen.each do |genre|
		UsersGenre.create!(user_id: naveen_user.id, genre_id: Genre.where(name: genre).first.id)
end
violences_naveen = ["Low", "None"]
violences_naveen.each do |violence|
		UsersViolence.create!(user_id: naveen_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_naveen = ["FIFA 20", "XCOM 2"]
games_naveen.each do |game|
		UsersGame.create!(user_id: naveen_user.id, game_id: Game.where(name: game).first.id)
end

xi_user = User.create!(name: "Xi", email: 'xi@user.com', password: 'password', password_confirmation: 'password', age: 17)
themes_xi = ["Mystery", "Crime"]
themes_xi.each do |theme|
		UsersTheme.create!(user_id: xi_user.id, theme_id: Theme.where(name: theme).first.id)
end
games_xi = ["Killzone Shadowfall", "XCOM 2", "PUBG", "Need for Speed: Heat", "Gran Turismo Sport", "F1 2019"]
games_xi.each do |game|
		UsersGame.create!(user_id: xi_user.id, game_id: Game.where(name: game).first.id)
end

mitsuki_user = User.create!(name: "Mitsuki", email: 'mitsuki@user.com', password: 'password', password_confirmation: 'password', age: 32)
themes_mitsuki = ["Crime", "Sci-Fi"]
themes_mitsuki.each do |theme|
		UsersTheme.create!(user_id: mitsuki_user.id, theme_id: Theme.where(name: theme).first.id)
end
genres_mitsuki = ["Adventure", "Racing"]
genres_mitsuki.each do |genre|
		UsersGenre.create!(user_id: mitsuki_user.id, genre_id: Genre.where(name: genre).first.id)
end
violences_mitsuki = ["Medium", "Low"]
violences_mitsuki.each do |violence|
		UsersViolence.create!(user_id: mitsuki_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_mitsuki = ["Uncharted 4", "Need for Speed: Heat", "F1 2019", "The Last of Us"]
games_mitsuki.each do |game|
		UsersGame.create!(user_id: mitsuki_user.id, game_id: Game.where(name: game).first.id)
end

olivier_user = User.create!(name: "Olivier", email: 'olivier@user.com', password: 'password', password_confirmation: 'password', age: 26)
themes_olivier = ["Horror"]
themes_olivier.each do |theme|
		UsersTheme.create!(user_id: olivier_user.id, theme_id: Theme.where(name: theme).first.id)
end
genres_olivier = ["Shooting", "Strategy"]
genres_olivier.each do |genre|
		UsersGenre.create!(user_id: olivier_user.id, genre_id: Genre.where(name: genre).first.id)
end

roberto_user = User.create!(name: "Roberto", email: 'roberto@user.com', password: 'password', password_confirmation: 'password', age: 12)
violences_roberto = ["None", "Low", "Medium"]
violences_roberto.each do |violence|
		UsersViolence.create!(user_id: roberto_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_roberto = ["FIFA 20", "XCOM 2", "PUBG", "Gran Turismo Sport", "Project CARS 2", "Farenheit", "F1 2019", "The Crew 2"]
games_roberto.each do |game|
		UsersGame.create!(user_id: roberto_user.id, game_id: Game.where(name: game).first.id)
end

sharzad_user = User.create!(name: "Sharzad", email: 'sharzad@user.com', password: 'password', password_confirmation: 'password', age: 37)
genres_sharzad = ["Shooting", "Sports"]
genres_sharzad.each do |genre|
		UsersGenre.create!(user_id: sharzad_user.id, genre_id: Genre.where(name: genre).first.id)
end
violences_sharzad = ["None", "Low"]
violences_sharzad.each do |violence|
		UsersViolence.create!(user_id: sharzad_user.id, violence_id: Violence.where(name: violence).first.id)
end
games_sharzad = ["FIFA 20", "PUBG", "Madden NFL 20"]
games_sharzad.each do |game|
		UsersGame.create!(user_id: sharzad_user.id, game_id: Game.where(name: game).first.id)
end

	     
