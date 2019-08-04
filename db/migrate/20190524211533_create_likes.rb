class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :company_id, null: false

      t.timestamps

      t.index :user_id
      t.index :company_id
      t.index [:user_id, :company_id], unique: true
    end
  end
end
