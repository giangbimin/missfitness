class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :trainername
      t.string :metakeywords
      t.text :metadescription
      t.string :metaimage
      t.text :content
      t.boolean :pilates
      t.boolean :privatetraining
      t.boolean :ciruittraining
      t.boolean :trx

      t.timestamps
    end
  end
end
