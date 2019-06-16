class UploadedFile < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
