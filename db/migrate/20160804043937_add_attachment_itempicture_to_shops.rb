class AddAttachmentItempictureToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :itempicture
    end
  end

  def self.down
    remove_attachment :shops, :itempicture
  end
end
