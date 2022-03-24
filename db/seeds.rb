
avengers = Movie.create(title: "Avengers", plot:"When Thor's evil brother, Loki, gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury, director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury's are Iron Man, Captain America, the Hulk, Thor, the Black Widow and Hawkeye.", 
movie_length: 143, genre: "Action", actor_list: "Robert Downey Jr, Jeremy Renner, Chris Evans, Chris Hemsworth, Mark Ruffalo, Tom Hiddleston, Scarlett Johansson")

antman = Movie.create(title: "Antman", plot:"Forced out of his own company by former protégé Darren Cross, Dr. Hank Pym recruits the talents of Scott Lang, a master thief just released from prison. Lang becomes Ant-Man, trained by Pym and armed with a suit that allows him to shrink in size, possess superhuman strength and control an army of ants. The miniature hero must use his new skills to prevent Cross, also known as Yellowjacket, from perfecting the same technology and using it as a weapon for evil.", 
movie_length: 118, genre: "Action", actor_list: "Paul Rudd, Evangeline Lilly, Micheal Pena, Michael Douglas, Stan Lee, Corey Stoll")



Review.create(rating: 9, text: "This movie was fantastic", movie: avengers)
Review.create(rating: 5, text: "This movie could have been better", movie: antman)
Review.create(rating: 7, text: "This movie was very funny", movie: )


