class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :rec_id
      t.integer :minutes
      t.string :notes
      t.date :date
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
