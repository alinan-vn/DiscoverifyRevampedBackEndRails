# 15.times do
#     Artist.create(
#         name: Faker::Music.band,
#         bio: Faker::Lorem.sentence(word_count: 20),
#         total_likes: Faker::Number.between(from: 1, to: 50)
#     )
# end

# 25.times do
#     Song.create(
#         name: Faker::Name.name,
#         likes: Faker::Number.between(from: 1, to: 8),
#         artist_id: Faker::Number.between(from: 1, to: 15),
#         genre_id: Faker::Number.between(from: 1, to: 10)
#     )
# end

# 10.times do
#     Genre.create(
#         name: Faker::Music.genre
#     )
# end
