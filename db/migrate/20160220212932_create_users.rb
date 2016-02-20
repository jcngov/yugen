class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :sex
      t.date :born_on
      t.string :profile_picture_url
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
