class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
		t.integer "specimen_id"
		t.integer "analyte_id"
		t.timestamps
    end
	add_index :results, ["specimen_id", "analyte_id"]
  end
end
