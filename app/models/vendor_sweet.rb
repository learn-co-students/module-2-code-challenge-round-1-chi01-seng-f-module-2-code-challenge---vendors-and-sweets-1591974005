class VendorSweet < ApplicationRecord
  belongs_to :sweet 
  belongs_to :vendor 

  validates :price, presence:true
  validates :price, numericality: { greater_than: 0 }
end


Add validations to the VendorSweet model so that:

the price is not blank
the price is not a negative number
Add error handling to the VendorSweet create action. If the VendorSweet is 
not valid, the form should show the validation error messages.