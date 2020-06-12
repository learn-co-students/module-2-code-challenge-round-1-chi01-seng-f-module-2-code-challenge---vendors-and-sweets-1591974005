def new
  @vendorsweet = VendorSweet.new
  @sweets=Sweet.all
  @Vendors=Vendors.all
end



def create
  if @vendor_sweet.valid?
     @vendor_sweet = VendorSweet.new(pa)
  else 
    render :new
  end
end


private 
  def pa
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end
end