class CreatePhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
		t.integer "hospital_id"
		t.string "physician_name" 
		t.string "physician_phone_number" 
		t.string "physician_type"
      t.timestamps
    end
	add_index("physicians", "hospital_id")
  end
end
