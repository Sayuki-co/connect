class RenameUserNumberClumnToCompanies < ActiveRecord::Migration[5.0]
  def change
      rename_column :companies, :user_number, :user_id
  end
end
