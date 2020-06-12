class VendorSweetsController < ApplicationController
  
  def new
    @vendor_sweet = VendorSweets.new
  end 

  def create
    vendor_sweet = VendorSweet.create(vendor_sweets_params)
    if sweet.valid?
      redirect_to vendor_sweet_path(vendor_sweet)
    else 
      flash[:errors] = @sweet.errors.full_messages
      redirect_to new_sweet_path
  end


private
  def vendor_sweets_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end 
end