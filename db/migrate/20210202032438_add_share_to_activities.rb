class AddShareToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :share, :boolean
  end
end
