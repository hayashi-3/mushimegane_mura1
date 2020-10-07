class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.references :participant, foreign_key: true, null: false
      t.references :event, foreign_key: true, null: false
      t.string :zoom_url, null: false
      t.text :event_guide, null: false
      t.timestamps
    end
  end
end
