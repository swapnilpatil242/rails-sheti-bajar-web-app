Generators :

# Models Creation :
  $ rails g model category title:string description:text logo:string
  $ rails g model address city:string taluka:string district:string state:string pincode:integer
  $ rails g model User name:string mobile_no:integer profile:string is_verified:boolean is_deleted:boolean is_suspended:boolean secrete_token:string address:references
  $ rails g model Product title:string description:text quantity:string is_verified:boolean is_deleted:boolean is_blocked:boolean is_completed:boolean address:references category:references user:references
  $ rails g model uploaded_file file_name:string imageable_id:integer, imageable_type:integer


# Record Creations through rails console(temporay data):
  $ Category.create!(title: "grains", description: "grains testing", logo: "this is logo")
  $ Address.create!(city: "bhk", taluka: "erandol", district: "jalgaon", state: "maha", pincode: 425109)
  $ User.create!(name: "swapnil", mobile_no: 123456789, profile:"swapnil.png", is_verified: true, is_deleted: false, is_suspended: false, secrete_token: "xyz", address_id:1)
  $ Product.create!(title: "Cotton", description: "text123", quantity: "1kg", is_verified: true, is_blocked: false, is_completed:false, address_id: 1, category_id: 1, user_id: 1)
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