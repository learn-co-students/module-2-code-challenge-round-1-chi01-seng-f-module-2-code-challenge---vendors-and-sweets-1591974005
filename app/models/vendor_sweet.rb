class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor
#VendorSweet connects one sweet with one vendor.

validates_presence_of :price
validates_numericality_of :price, :greater_than => 0


end
