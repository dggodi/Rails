class CreateLimitAnalytes < ActiveRecord::Migration[5.0]
  def change
    create_table :limit_analytes do |t|
	  t.integer "physician_id"
	  t.integer "analyte_id"
	  t.string "limit_type"
      t.timestamps
    end
	  add_index :limit, ["physician_id", "analyte_id"]
  end
end

