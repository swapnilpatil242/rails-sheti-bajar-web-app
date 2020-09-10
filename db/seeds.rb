# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Category.create!(title: "बियाणे औषधे व खते", description: "differnet type of seeds", logo: "this is logo")
# Category.create!(title: "मशिण व शेती ची अवजारे", description: "diff type of machine used for farming", logo: "this is logo")
# Category.create!(title: "पाळीव प्राणी", description: "differnet type of seeds", logo: "this is logo")
# Category.create!(title: "पिके", description: "differnet type of seeds", logo: "this is logo")
# Category.create!(title: "इतर", description: "differnet type of seeds", logo: "this is logo")

# Address.create!(city: "भातखेडे", taluka: "एरंडोल", district: "जळगाव", state: "महाराष्ट्रा", pincode: 425109)
# Address.create!(city: "धुळपिंप्री", taluka: "पारोळा", district: "जळगाव", state: "महाराष्ट्रा", pincode: 425109)

# User.create!(name: "स्वप्नील पाटील", mobile_no: "8208090566", profile:"swapnil.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "swap123xyz", address_id:1)
# User.create!(name: "तुषार पाटील", mobile_no: "9011355859", profile:"tushar.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "tush123xyz", address_id: 2)

roles = ["कलेक्टर", "तहसीलदार", "सरपंच", "उपसरपंच", "ग्रामसेवक", "तलाठी", "पोलीस पाटील", "शिपाई", "नागरिक"]
roles.each do |ele|
  Role.create!(name: ele, description: "testing")
end
