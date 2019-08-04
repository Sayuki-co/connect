class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.references :company, foreign_key: true
      t.string :image
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
