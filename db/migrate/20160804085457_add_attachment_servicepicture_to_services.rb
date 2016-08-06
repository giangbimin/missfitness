class AddAttachmentServicepictureToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :servicepicture
    end
  end

  def self.down
    remove_attachment :services, :servicepicture
  end
end
