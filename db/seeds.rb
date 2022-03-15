puts "🌱 Seeding spices..."
Movie.create(title: "Avengers", plot:"When Thor's evil brother, Loki, gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury, director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury's are Iron Man, Captain America, the Hulk, Thor, the Black Widow and Hawkeye.")
# Seed your database here
Review.create(rating: 9, text: "I hate it alot", movie_id: 1)
puts "✅ Done seeding!"
