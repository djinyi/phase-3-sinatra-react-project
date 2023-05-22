puts "🌱 Seeding spices..."

Creator.create(name: "Lunis Loon")
Creator.create(name: "Mile RazorBeak")
Creator.create(name: "Kylo the Seedy")
Creator.create(name: "R-10")
Creator.create(name: "BOOMSHAKALAKA")

Webcomic.create(title: "The Big Bird", genre: "horror", description: "He will give you the bird...", price: 6, creator_id: 1, image: "https://i.imgur.com/al3LWyC.jpg")
Webcomic.create(title: "The Seed that Ran Away", genre: "mystery", description: "Could the mystery of the missing seed be solved?!", price: 2, creator_id: 3, image: "https://i.imgur.com/iQ6RU7S.jpg")
Webcomic.create(title: "Seedy World", genre: "romance", description: "No predator could come near his... beak.", price: 6, creator_id: 5, image: "https://i.imgur.com/fqsmhDR.jpg")
Webcomic.create(title: "What Happened", genre: "horror", description:  "The finger that bites back...", price: 6, creator_id: 3, image: "https://i.imgur.com/ZcQW4Bq.jpg")
Webcomic.create(title: "Two Beaks", genre: "action", description: "Two birds against the world...", price: 7, creator_id: 5, image: "https://i.imgur.com/phjtdKl.jpg")
Webcomic.create(title: "You are My PinFeather", genre: "romance", description: "Polly has an itch...", price: 6, creator_id: 2, image: "https://i.imgur.com/OvxJNvt.jpg")
Webcomic.create(title: "Vegetables Can't Stop Me", genre: "historical", description: "Must throw out the veggies.", price: 4, creator_id: 3, image: "https://i.imgur.com/SH21sNw.jpg")
Webcomic.create(title: "New Bird on the Block", genre: "action", description: "Birds don't need friends but frenemies.", price: 8, creator_id: 5, image: "https://i.imgur.com/J5vaK8T.jpg")
Webcomic.create(title: "Polly Wants Your Food", genre: "horror", description: "Polly's been waiting...", price: 6, creator_id: 1, image: "https://i.imgur.com/ea4FFWS.jpg")
Webcomic.create(title: "Nurse Biter", genre: "horror", description: "This nurse will draw more blood!", price: 3, creator_id: 1, image: "https://i.imgur.com/kEhvSFc.jpg")


puts "✅ Done seeding!"
