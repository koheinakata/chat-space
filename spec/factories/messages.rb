require 'faker'

FactoryGirl.define do
  factory :message do
    body  { Faker::Lorem.sentence }
    image { Faker::Avatar.image }
    user_id { Faker::Number.number(1)}
    group_id { Faker::Number.number(1)}
  end
end
