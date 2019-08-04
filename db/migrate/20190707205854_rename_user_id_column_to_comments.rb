class RenameUserIdColumnToComments < ActiveRecord::Migration[5.0]
  def change
      rename_column :comments, :user_id, :company_user_id
  end
end
