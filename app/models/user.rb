class User < ApplicationRecord
  belongs_to :address
  has_many :products
end
