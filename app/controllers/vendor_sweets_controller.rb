class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end

  def show
    @vendor_sweet = VendorSweet.find(params[:id])
  end
  

end