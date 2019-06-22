class User < ApplicationRecord
  belongs_to :address
  has_many :products

  validates :mobile_no, uniqueness: true
  
  before_create :set_secrete_token

  private
  def set_secrete_token
    self.secrete_token = generate_token
  end

  def generate_token
    loop do
      token = SecureRandom.hex(14)
      break token unless User.where(secrete_token: token).exists?
    end
  end

end
