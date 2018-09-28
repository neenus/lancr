class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end