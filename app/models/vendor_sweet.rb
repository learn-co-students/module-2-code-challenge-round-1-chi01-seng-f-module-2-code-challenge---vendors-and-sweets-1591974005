class VendorSweet < ApplicationRecord
    validates :price, presence: true
    validates :price, :numericality => { :greater_than_or_equal_to => 0 }

    belongs_to :vendor 
    belongs_to :sweet
end