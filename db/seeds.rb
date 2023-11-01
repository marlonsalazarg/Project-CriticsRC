# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy all data
Game.destroy_all
Company.destroy_all
Genre.destroy_all
Platform.destroy_all
User.destroy_all

# Create User Admin

User.create(email: "admin@mail.com", password: "123456", password_confirmation: "123456", role: 0, username: "admin")



# Create Genres
Genre.create(name: "Action")
Genre.create(name: "Adventure")
Genre.create(name: "Fighting")
Genre.create(name: "Platform")
Genre.create(name: "Puzzle")

# Create Platforms
Platform.create(name: "PC", category: 5)
Platform.create(name: "PlayStation 4", category: 0)
Platform.create(name: "Xbox One", category: 0)
Platform.create(name: "Nintendo Switch", category: 4)
Platform.create(name: "iOS", category: 3)

# Create Companies
Company.create(name: "Nintendo", country: "Japan",start_date: "1990-09-09" , description: "Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt")
Company.create(name: "Rockstar Games", country: "USA",start_date: "1990-09-09" , description: "Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt")
Company.create(name: "Electronic Arts", country: "USA",start_date: "1990-09-09" , description: "Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt")
Company.create(name: "Sony Interactive Entertainment", country: "Japan",start_date: "1990-09-09" , description: "Formerly: Sony Computer Entertainment")
Company.create(name: "Microsoft Studios", country: "USA",start_date: "1990-09-09" , description: "Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt")

# Create Games
Game.create(name: "Grand Theft Auto V",release_date: "1990-09-09" , summary: "Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt", rating: 9.4, category: 0)
Game.create(name: "The Legend of Zelda: Breath of the Wild",release_date: "1990-09-09" , summary: "The Legend of Zelda: Breath of the Wild is an action-adventure game developed and published by Nintendo, released for the Nintendo Switch and Wii U consoles on March 3, 2017. Breath of the Wild is set at the end of the Zelda timeline; the player controls Link, who awakens from a hundred-year slumber to defeat Calamity Ganon before it can destroy the kingdom of Hyrule.", rating: 9.5, category: 0)
Game.create(name: "The Witcher 3: Wild Hunt",release_date: "1990-09-09" , summary: "The Witcher 3: Wild Hunt is a 2015 action role-playing game developed and published by Polish developer CD Projekt Red and is based on The Witcher series of fantasy novels written by Andrzej Sapkowski. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third main installment in the The Witcher's video game series, played in an open world with a third-person perspective.", rating: 9.3, category: 0)
Game.create(name: "Super Mario Odyssey",release_date: "1990-09-09" , summary: "Super Mario Odyssey is a 2017 platform game developed and published by Nintendo for the Nintendo Switch. An entry in the Super Mario series, it follows Mario and Cappy, a sentient hat that allows Mario to control other characters and objects, as they journey across various worlds to save Princess Peach from his nemesis Bowser, who plans to forcibly marry her.", rating: 9.5, category: 0)
Game.create(name: "Red Dead Redemption 2",release_date: "1990-09-09" , summary: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and is a prequel to the 2010 game Red Dead Redemption. The story is set in 1899 in a fictionalized representation of the Western, Midwestern, and Southern United States and follows outlaw Arthur Morgan, a member of the Van der Linde gang.", rating: 9.5, category: 0)
Game.create(name: "The Last of Us Part II",release_date: "1990-09-09" , summary: "The Last of Us Part II is a 2020 action-adventure game developed by Naughty Dog and published by Sony Interactive Entertainment for the PlayStation 4. Set five years after The Last of Us (2013), players control 19-year-old Ellie who sets out for revenge and becomes involved in a conflict between a militia and a cult in a post-apocalyptic United States.", rating: 9.5, category: 0)
Game.create(name: "God of War",release_date: "1990-09-09" , summary: "God of War is a 2018 action-adventure game developed by Santa Monica Studio and published by Sony Interactive Entertainment (SIE). It is the eighth installment in the God of War series, the eighth chronologically, and the sequel to 2010's God of War III", rating: 9.5, category: 0)
puts "Finished seeding!"