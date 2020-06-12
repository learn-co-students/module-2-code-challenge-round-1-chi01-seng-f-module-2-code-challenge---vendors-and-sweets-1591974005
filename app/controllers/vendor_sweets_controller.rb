class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end


  def new
    @vendor_sweet = VendorSweet.new
  end

  def create 
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    redirect_to vendor_path(@vendor_sweet.vendor)
  end
  
  def show
    @vendor_sweet = VendorSweet.find(params[:id])
  end




  private
    def vendor_sweet_params
      params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end

end
