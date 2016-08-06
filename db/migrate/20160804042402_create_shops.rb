class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :itemname
      t.string :metakeywords
      t.text :metadescription
      t.string :metaimage
      t.text :content
      t.integer :price
      t.boolean :available

      t.timestamps
    end
  end
end
