class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets

  # vendors can have many sweets.
end
