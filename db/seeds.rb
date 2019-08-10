# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 

Zipcode.destroy_all
Location.destroy_all
HousingType.destroy_all
User.destroy_all

zipcodes = [
    {
        "name" => "33113",
        "location" => "A"
    },
    {
        "name" => "33132",
        "location" => "B"
    },
    {
        "name" => "33313",
        "location" => "C"
    }

]


# locations = [
#     {
#         "name" => "Space Called Tribe",
#         "phone" => "321-123-1234",
#         "address" => "456 elmo street Miami, FL",
#         "description" => "2 bedroom townhouses",
#         "units" => 15,
#         "zipcode" => "33113",
#         "housing_type" => "rent",
#         "user" => "student"
#     },
#     {
#         "name" => "Groovin Bean",
#         "phone" => "123-321-1234",
#         "address" => "123 elmo street Miami, FL",
#         "description" => "1 bedroom condos",
#         "units" => 22,
#         "zipcode" => "33132",
#         "housing_type" => "rent",
#         "user" => "parent"
        
#     },
#     {
#         "name" => "Whitney Condo",
#         "phone" => "954-744-0000",
#         "address" => "1261 sw 103 ave Miami, FL",
#         "description" => "3 bedroom single family ranch style house",
#         "units" => 1,
#         "zipcode" => "33313",
#         "housing_type" => "buy",
#         "user" => "veteran"
#     }
# ]

# locations.each do |x|
#     location = Location.create(name: x["name"], phone: x["phone"], address: x["address"], description: x["drescription"], units: x["units"], zipcode: x["zipcode"])
#     zipcode = Zipcode.create(name: x["zipcode"], location_id: location:id)
#     housing_type = HousingType.create(name: x["housing_type"], location_id: location:id)
#     user = User.create(name: x["user"], location_id:)
# end

zipcodes.each do |x|
    zipcode = Zipcode.create(name: x["name"])
    location = Location.create(name: x["name"], phone: x["phone"], address: x["address"], description: x["drescription"], units: x["units"], zipcode_id: x["zipcode:id"], user_id: x["user:id"], housing_type_id: x["housing_type:id"])
    housing_type = HousingType.create(name: x["housing_type"])
    user = User.create(name: x["user"])
end

puts "There are #{Location.count} afforable housing Location options available"