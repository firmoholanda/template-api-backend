# create properties
@property_type = ["Residential", "Commercial", "Industrial"]

30.times do
    Property.create!(
        owner: Faker::Name.name,
        address: Faker::Address.street_address,
        country: Faker::Address.country,
        tax_number: Faker::Number.number(digits: 10),
        fips_code: Faker::Number.number(digits: 5),
        property_type: @property_type.sample,
        year_build: Faker::Number.number(digits: 4),
        units: Faker::Number.number(digits: 2),
        lot_size: Faker::Number.number(digits: 4)
        )
end
