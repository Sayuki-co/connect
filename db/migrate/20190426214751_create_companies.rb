class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :occupation
      t.text :hope
      t.string :image
      t.text :outline
      t.text :introduce
      t.text :want
      t.text :message
      t.string :area

      t.timestamps
    end
  end
end
