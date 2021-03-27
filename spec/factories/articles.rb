FactoryBot.define do
    factory :article do
      title { Faker::Lorem.characters(number: 10) }
      contens { Faker::Lorem.characters(number: 300) }
    end
  end