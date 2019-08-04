class RenameCompanyUserId < ActiveRecord::Migration[5.0]
  def change
      rename_column :comments, :company_user_id, :connect_id
  end
end
