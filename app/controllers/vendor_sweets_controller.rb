class VendorSweetsController < ApplicationController
  def new
    @vendor_sweet = VendorSweet.new
    @sweets=Sweet.all
    @vendors=Vendor.all
  end



  def create
    @vendor_sweet = VendorSweet.new(pa)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor)
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
      redirect_to new_vendor_sweet_path
    end
  end


  private

    def pa
      params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
