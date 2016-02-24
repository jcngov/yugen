class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :continent
      t.string :country
      t.string :region
      t.string :city
      t.float :long
      t.float :lat

      t.timestamps null: false
    end
  end
end
