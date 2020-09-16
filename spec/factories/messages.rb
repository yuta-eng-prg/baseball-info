FactoryBot.define do
  factory :message do
    content       { Faker::Lorem.sentence }
    generation_id { 2 }
    genre_id      { 2 }
    body_parts_id { 2 }
    category_id   { 2 }
    association :user
  end
end