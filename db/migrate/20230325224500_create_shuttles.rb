class CreateShuttles < ActiveRecord::Migration[7.0]
  def change
    create_table :shuttles do |t|
      t.string :description
      t.time :setoff_time
      t.integer :max_capacity
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
