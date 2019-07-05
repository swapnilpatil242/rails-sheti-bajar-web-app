Generators :

# Models Creation :
  $ rails g model category title:string description:text logo:string
  $ rails g model address city:string taluka:string district:string state:string pincode:integer
  $ rails g model User name:string mobile_no:integer profile:string is_verified:boolean is_deleted:boolean is_suspended:boolean secrete_token:string address:references
  $ rails g model Product title:string description:text quantity:string is_verified:boolean is_deleted:boolean is_blocked:boolean is_completed:boolean address:references category:references user:references
  $ rails g model uploaded_file file_name:string imageable_id:integer, imageable_type:integer


# Record Creations through rails console(temporay data):
  $ Category.create!(title: "बियाणे औषधे व खते", description: "differnet type of seeds", logo: "this is logo")
  $ Category.create!(title: "मशिण व शेती ची अवजारे", description: "diff type of machine used for farming", logo: "this is logo")
  $ Category.create!(title: "पाळीव प्राणी", description: "differnet type of seeds", logo: "this is logo")
  $ Category.create!(title: "पिके", description: "differnet type of seeds", logo: "this is logo")
  $ Category.create!(title: "इतर", description: "differnet type of seeds", logo: "this is logo")
  
  $ Address.create!(city: "भातखेडे", taluka: "एरंडोल", district: "जळगाव", state: "महाराष्ट्रा", pincode: 425109)
  $ Address.create!(city: "धुळपिंप्री", taluka: "पारोळा", district: "जळगाव", state: "महाराष्ट्रा", pincode: 425109)
  $ Address.create!(city: "भरूच", taluka: "कराड", district: "सातारा", state: "महाराष्ट्रा", pincode: 425109)

  $ User.create!(name: "स्वप्नील पाटील", mobile_no: "8208090566", profile:"swapnil.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "swap123xyz", address_id:1)
  $ User.create!(name: "तुषार पाटील", mobile_no: "9011355859", profile:"tushar.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "tush123xyz", address_id: 2)
  $ User.create!(name: "अतुल पाटील", mobile_no: "9011355860", profile:"atul.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "tush123xyz", address_id: 3)

  $ Product.create!(title: "कापूस बी", description: "test", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 1, category_id: 1, user_id: 1)
  $ Product.create!(title: "मका बी", description: "test", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 1, category_id: 1, user_id: 1)
  
  $ Product.create!(title: "कॉन्फीडर", description: "test", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 2, category_id: 3, user_id: 2)
  $ Product.create!(title: "10 10 20 खते", description: "test", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 2, category_id: 3, user_id: 2)

  $ Product.create!(title: "बैल जोडी", description: "test", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 3, category_id: 3, user_id: 3)

  

  $ UploadedFile.create(imageable: Product.first, file_name: "test")


# Rails console ::
  > ActiveRecord::Base.connection.tables
  > cat = Category.first
  > cat.products

  > addr = Address.first
  > addr.products

  > usr = User.first
  > usr.products

# API responses ::
  - Error :
    {"errors":[{"message":"Sorry, that page does not exist","code":34}]}
  - Success :