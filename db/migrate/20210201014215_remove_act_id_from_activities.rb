class RemoveActIdFromActivities < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :act_id, :integer
  end
end
