10.times do
  User.create(name: Faker::Name.name,
              email: Faker::Internet.email,
              password: "password",
              picture: ("../img/#{(rand(1..5))}.jpg")
              )

end


20.times do
  Post.create(title: Faker::Lorem.sentence,
              url: Faker::Internet.url,
              user_id: rand(1..10))

end


30.times do
  Comment.create(content: Faker::Lorem.sentence,
                 user_id: rand(1..10),
                 post_id: rand(1..20))

end
