class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.string :vendor_name
      t.string :sweet_name
      t.integer :price

      t.timestamps
    end
  end
end
