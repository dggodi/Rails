class CreateSpecimen < ActiveRecord::Migration[5.0]
  def change
    create_table :specimen do |t|
      t.integer "physician_id"
	  t.string "sample_name"
	  t.date "date_received"
	  t.string "sample_type"
      t.timestamps
    end
	add_index("specimen", "physician_id")
  end
end

