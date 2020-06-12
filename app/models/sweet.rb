class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    def price(vendor) 
        VendorSweet.all.find do |sweet|
            sweet.sweet == self && sweet.vendor == vendor 
        end.price
    end 
end
