puts "🌱 Seeding spices..."

Creator.create(name: "Lunis Loon")
Creator.create(name: "Mile RazorBeak")
Creator.create(name: "Kylo the Seedy")
Creator.create(name: "R-10")
Creator.create(name: "BOOMSHAKALAKA")

genre_types = ["sci-fi", "fantasy", "romance", "comedy", "horror"]

webcomic_names = ["The Big List", "What Happened", "The Seed that Ran Away", "Seedy World", "Two Beaks", "You are My PinFeather", "Vegetables Can't Stop Me"]

random_descriptions = ["Two birds against the world...", "The finger that bites back...", "It's not easy being the new bird.", "Could the mystery of the missing seed be solved?!", "No predator could come near his... beak."]

Creator.all.each do |creator|
  rand(1..3).times do
    Webcomic.create(
      title: webcomic_names.sample,
      genre: genre_types.sample,
      description: random_descriptions.sample,
      price: rand(0..20),
      creator_id: creator.id
    )
  end
end


puts "✅ Done seeding!"
