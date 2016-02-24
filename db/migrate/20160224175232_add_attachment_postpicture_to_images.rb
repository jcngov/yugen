class AddAttachmentPostpictureToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :postpicture
    end
  end

  def self.down
    remove_attachment :images, :postpicture
  end
end
