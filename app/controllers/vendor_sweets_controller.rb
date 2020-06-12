class VendorSweetsController < ApplicationController
    def new 
        @vendors = Vendor.all
        @sweets = Sweet.all
        @vendor_sweet = VendorSweet.new 
    end 

    def create 
        @vendor_sweet = VendorSweet.create(vendor_id: params[:vendor_sweet][:vendor_id], sweet_id: params[:vendor_sweet][:sweet_id], price: :price)
        if @vendor_sweet.valid?
            redirect_to vendor_path(@vendor_sweet.vendor_id)
        else 
            flash[:errors] = @vendor_sweet.full_messages
            redirect_to new_vendor_sweet_path
        end
    end 

    
end
