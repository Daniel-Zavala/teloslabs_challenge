class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :act_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
