class Contest < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :slogan, presence: true,
                      length: { maximum: 50}
end
