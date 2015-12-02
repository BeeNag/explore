class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
