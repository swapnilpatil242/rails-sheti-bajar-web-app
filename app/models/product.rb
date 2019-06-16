class Product < ApplicationRecord
  belongs_to :address
  belongs_to :category
  belongs_to :user
  has_many :uploaded_files, as: :imageable
end
