class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :survicename
      t.string :metakeywords
      t.text :metadescription
      t.string :metaimage
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
