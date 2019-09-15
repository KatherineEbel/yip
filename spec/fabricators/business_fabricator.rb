Fabricator(:business) do
  name { Faker::Company.name }
  telephone { Faker::PhoneNumber.phone_number }
  street { Faker::Address.street_address }
  city { Faker::Address.city }
  state { Faker::Address.state }
  zip { Faker::Address.zip }
end
