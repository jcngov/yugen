class RemoveLocationAttsFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :continent
    remove_column :posts, :country
    remove_column :posts, :region
    remove_column :posts, :city
  end
end
