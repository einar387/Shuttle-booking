class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.references :service, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.integer :number_of_seat

      t.timestamps
    end
  end
end
