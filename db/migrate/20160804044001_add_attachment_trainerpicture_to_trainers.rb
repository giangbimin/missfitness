class AddAttachmentTrainerpictureToTrainers < ActiveRecord::Migration
  def self.up
    change_table :trainers do |t|
      t.attachment :trainerpicture
    end
  end

  def self.down
    remove_attachment :trainers, :trainerpicture
  end
end
