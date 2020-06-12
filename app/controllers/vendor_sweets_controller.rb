class VendorSweetsController < ApplicationController


  def new 
    @vendor_sweet = VendorSweet.new 
    @sweets = Sweet.all 
    @vendors = Vendor.all 
  end 

  def create
    vendor_sweet = VendorSweet.new(vendor_sweet_params)
    vendor = vendor_sweet.vendor_id
    if vendor_sweet.valid?
      vendor_sweet.save
      redirect_to vendor_path(vendor)
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
  end

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end

end
