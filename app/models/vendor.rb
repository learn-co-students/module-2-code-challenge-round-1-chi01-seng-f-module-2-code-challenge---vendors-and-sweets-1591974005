class Vendor < ApplicationRecord
    has_many :vendor_sweets 
    has_many :sweets, through: :vendor_sweets 

    def average_price 
        total_price = self.vendor_sweets.map do |sweet|
            sweet.price 
        end.sum
        if total_price == 0 
            0
        else
            total_price / self.sweets.count
        end  
    end  

    def self.average_price 
        total_price = VendorSweet.all.map do |sweet|
            sweet.price 
        end.sum 
        total_price / VendorSweet.all.count 
    end 
end
