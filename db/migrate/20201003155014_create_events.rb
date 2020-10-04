class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :participant, foreign_key: true, null:false
      t.datetime :date_and_time, null: false
      t.text :event_name, null: false
      t.string :image_id
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end
  end
end
