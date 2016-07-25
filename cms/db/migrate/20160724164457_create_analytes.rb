class CreateAnalytes < ActiveRecord::Migration[5.0]
  def change
    create_table :analytes do |t|
		t.string "analyte_name"
		t.string "result_range"
		t.timestamps
    end
  end
end