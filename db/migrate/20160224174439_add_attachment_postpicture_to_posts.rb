class AddAttachmentPostpictureToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :postpicture
    end
  end

  def self.down
    remove_attachment :posts, :postpicture
  end
end
