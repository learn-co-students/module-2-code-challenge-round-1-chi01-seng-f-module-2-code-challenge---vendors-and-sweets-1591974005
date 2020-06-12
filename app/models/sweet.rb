class Sweet < ApplicationRecord
  has_many :vendorsweet
  has_many :vendor, through: :vendorsweet
end