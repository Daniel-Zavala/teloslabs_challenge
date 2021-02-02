class AddShareToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :share, :boolean
  end
end
