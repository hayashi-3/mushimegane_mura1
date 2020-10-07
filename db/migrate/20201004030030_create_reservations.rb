class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :participant, foreign_key: true, null: false
      t.references :event, foreign_key: true, null: false
      t.integer :number_of_reservations
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
