FactoryBot.define do
  factory :comment do
    user { build(:user) }
    post { build(:post) }
    content { Faker::Lorem.sentence(word_count: 4) }
  end
end
