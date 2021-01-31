class RemoveUserIdFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :user_id, :integer
  end
end
