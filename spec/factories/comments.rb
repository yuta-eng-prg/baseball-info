FactoryBot.define do
  factory :comment do
    comment       { Faker::Lorem.sentence }
    user
    message
  end
end