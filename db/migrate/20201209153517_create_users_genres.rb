class CreateUsersGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :users_genres do |t|
      t.references :user, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
    end
  end
end
