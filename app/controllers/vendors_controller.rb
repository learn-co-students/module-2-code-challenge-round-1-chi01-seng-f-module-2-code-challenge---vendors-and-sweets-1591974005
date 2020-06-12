class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @average_price = Vendor.average_price
  end

  def show 
    @vendor = Vendor.find(params[:id])
    @sweets = @vendor.sweets
  end 

end
