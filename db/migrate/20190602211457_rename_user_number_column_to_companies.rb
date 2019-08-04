class RenameUserNumberColumnToCompanies < ActiveRecord::Migration[5.0]
  def change
      rename_column :companies, :user_id, :user_number
  end
end
