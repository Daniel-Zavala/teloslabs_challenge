class AddActIdToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :act_id, :integer
    add_index :activities, :act_id
  end
end
