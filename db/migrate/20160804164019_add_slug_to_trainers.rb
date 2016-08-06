class AddSlugToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :slug, :string
    add_index :trainers, :slug, unique: true
  end
end
