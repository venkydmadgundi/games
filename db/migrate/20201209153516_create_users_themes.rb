class CreateUsersThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :users_themes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true
    end
  end
end
