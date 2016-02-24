class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :continent
      t.string :country
      t.string :region
      t.string :city
      t.date :traveled_on
      t.text :description
      t.text :pros
      t.text :cons
      t.text :tips_and_tricks
      t.date :post_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
