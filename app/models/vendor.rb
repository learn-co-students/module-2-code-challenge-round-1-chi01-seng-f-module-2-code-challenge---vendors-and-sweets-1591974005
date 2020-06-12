class Vendor < ApplicationRecord
  has_many :vendorsweet
  has_many :sweet, through: :vendorsweet
end