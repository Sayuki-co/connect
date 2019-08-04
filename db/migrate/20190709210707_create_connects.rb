class CreateConnects < ActiveRecord::Migration[5.0]
  def change
    create_table :connects do |t|
      t.references :user, foreign_key: true
      t.integer :company_user_id
      t.text :message

      t.timestamps
    end
  end
end
