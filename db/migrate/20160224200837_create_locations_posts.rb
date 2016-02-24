class CreateLocationsPosts < ActiveRecord::Migration
  def change
    create_table :locations_posts do |t|
      t.references :location, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
    end
  end
end
