class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :description
      t.date :service_date

      t.timestamps
    end
  end
end
