class RemoveActivityIdFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :activity_id, :integer
  end
end
