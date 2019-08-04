class RenameCompanyUserIdToComments < ActiveRecord::Migration[5.0]
  def change
      remove_column :connects, :message, :text
      
  end
end
