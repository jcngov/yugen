class RemovePaperclipFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :postpicture_file_name
    remove_column :posts, :postpicture_content_type
    remove_column :posts, :postpicture_file_size
    remove_column :posts, :postpicture_updated_at
  end
end
