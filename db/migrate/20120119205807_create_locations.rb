class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :address
			t.references :activity
      t.timestamps
    end
  end
end
