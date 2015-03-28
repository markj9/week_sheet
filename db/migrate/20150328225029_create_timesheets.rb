class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.string :status
      t.integer :total_hours

      t.timestamps null: false
    end
  end
end
