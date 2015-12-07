class AddPriceToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :price, :decimal
  end
end
