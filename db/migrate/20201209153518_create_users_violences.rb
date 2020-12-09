class CreateUsersViolences < ActiveRecord::Migration[6.0]
  def change
    create_table :users_violences do |t|
      t.references :user, null: false, foreign_key: true
      t.references :violence, null: false, foreign_key: true
    end
  end
end
