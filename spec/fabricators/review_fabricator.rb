Fabricator(:review) do
  comment { Faker::Lorem.sentences(number: 3) }
  business
end

