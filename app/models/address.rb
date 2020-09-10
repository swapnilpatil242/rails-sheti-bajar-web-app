class Address < ApplicationRecord
  has_many :users
  has_one :village_infos
  has_many :village_notices
  has_many :village_water_lines

end
