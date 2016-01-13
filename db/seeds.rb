Hotel.create!([
  {title: "The Dorchester", body: "A super-duper great hotel on Park Lane. Yay!", price: "249.99", image: "The Dorchester.jpg"},
  {title: "The Shangri-La", body: "Hotel in the Shard. Very popular with the young elite.", price: "299.99", image: "Default Hotel.jpg"},
  {title: "The Mandarin Oriental", body: "Popular hotel in the heart of Knightsbridge. Commonly used for Jewish wedding parties.", price: "199.99", image: "Default Hotel.jpg"},
  {title: "Premier Inn", body: "A cheap alternative to other more expensive hotels. Popular with students visiting friends and people on a tight budget.", price: "50.0", image: "Default Hotel.jpg"},
  {title: "The Rosewood", body: "Hotel near Holborn Tube Station. Popular with Jewish wedding parties", price: "150.0", image: "Default Hotel.jpg"},
  {title: "The Marriott", body: "A popular chain of hotels that can be found all over the United Kingdom.", price: "100.0", image: "Default Hotel.jpg"},
  {title: "The Ritz", body: "Exclusive hotel in the heart of London, located near Green Park. Popular destination for tourists who want to try afternoon tea.", price: "350.0", image: "The Ritz.jpg"},
  {title: "The St. Pancras Hotel", body: "Completely refurbished a few years ago but with modern ameneties. Located in one of the most beautiful buildings in London.", price: "324.5", image: "Default Hotel.jpg"}
])
Restaurant.create!([
  {title: "The York & Albany"},
  {title: "The Hawksmoor"},
  {title: "Cafe Med"}
])
Review.create!([
  {body: "Lovely hotel with very friendly and accomodating staff. Perfect for a weekend trip to London!", hotel_id: 3},
  {body: "Very expensive, but well worth it!", hotel_id: 1},
  {body: "Uncomfortable beds not worth the money we paid! Staff were very unfriendly as well! Stay well away...", hotel_id: 4},
  {body: "Very expensive! Look forward to spending huge amounts of money here, but it is well worth it! Would recommend for a short stay, say a weekend trip to London, but will really punish your wallet if you want to stay longer than that.", hotel_id: 1},
  {body: "I had a great time when I stayed in this hotel for a business trip! Well recommended!", hotel_id: 1},
  {body: "The Marriott that we stayed looked absolutely horrendous from the outside, and it didn't get much better from there! Should have spent a little more and stayed at a better hotel. Good if on a budget but not really otherwise!", hotel_id: 6}
])
User.create!([
  {name: "Ben", email: "bnaglerose88@gmail.com", password_digest: "$2a$10$F86Bwto015D5saiFQkBaNOByoXd3Ciaz79/lH3JgK3cDEvPAiPbDO"},
  {name: "Benny", email: "dimene_roc@hotmail.com", password_digest: "$2a$10$DaN7DUiP.1QLTnpYx5JTVeCGqlkoJ0jWOmbvohnuWNcFcG0wDd.bu"},
  {name: "John", email: "john@gmail.com", password_digest: "$2a$10$uLiSwvHD3Aq4cHR8bDHRyOP79sEHCeXShFxiML5pjFoVcokBagRJO"},
  {name: "Tom", email: "tom@gmail.com", password_digest: "$2a$10$/QGkfj8/Dn.usFdmzv5rjOrmubVY362YvYX7YGP/cAxuC4jRIlUky"}
])
