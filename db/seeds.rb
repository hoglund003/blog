require 'faker'

User.destroy_all
Post.destroy_all

10.times do
  u = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
  )
  puts "User created!" if u.save
end

User.all.each do |user|
  15.times do
    date = rand((4.months.ago)..(1.day.ago))
    p = Post.new(
      title: Faker::Lorem.word,
      content: Faker::Lorem.sentence(word_count: 6),
      user: user,
      created_at: date,
      updated_at: date,
    )

    puts "Post created!" if p.save
  end
end