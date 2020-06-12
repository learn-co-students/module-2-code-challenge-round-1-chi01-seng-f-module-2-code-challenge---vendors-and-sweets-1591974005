class VendorSweetsController < ApplicationController
  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    vendorsweet = VendorSweet.create(vendorsweet_params)
  end

  private
  def vendorsweet_params
    params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
  end

end
