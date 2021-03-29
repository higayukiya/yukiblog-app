FactoryBot.define do
    factory :comment do
      contens { Faker::Lorem.characters(number: 300) }
    end
  end