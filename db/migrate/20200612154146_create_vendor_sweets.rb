class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.string :vendor_id
      t.string :sweet_id
      t.integer :price
      t.timestamps
    end
  end
end
