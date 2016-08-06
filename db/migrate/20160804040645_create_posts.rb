class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :postname
      t.string :metakeywords
      t.text :metadescription
      t.string :metaimage
      t.text :content
      t.boolean :hide
      t.boolean :home

      t.timestamps
    end
  end
end
