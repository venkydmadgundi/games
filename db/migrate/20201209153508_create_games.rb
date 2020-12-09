class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :url
      t.integer :target_group
      t.references :theme, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.references :violence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
