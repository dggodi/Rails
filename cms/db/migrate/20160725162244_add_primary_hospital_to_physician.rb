class AddPrimaryHospitalToPhysician < ActiveRecord::Migration[5.0]
  def change
    add_column :physicians, :primary_hospital, :integer
	Physician.all.each do |p| p.join(:hospitals).where(:hospitals.id = :hospital_id)update_attribute(primary_hospital, hospital_id)
  end
end
