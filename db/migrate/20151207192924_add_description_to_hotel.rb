class AddDescriptionToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :body, :text
  end
end
