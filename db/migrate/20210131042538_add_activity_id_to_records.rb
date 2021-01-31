class AddActivityIdToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :activity_id, :integer
    add_index :records, :activity_id
  end
end
