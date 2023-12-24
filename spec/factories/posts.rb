FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    content { Faker::Lorem.sentence }
    user { FactoryBot.create(:user) }
  end
end