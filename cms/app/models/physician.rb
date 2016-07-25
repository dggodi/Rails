class Physician < ApplicationRecord
 
	scope :result_analytes, lambda {Analyte.joins(:results).where(:created_at => ("2014-01-01".to_date).. ("2014-03-31".to_date))}
	scope :reno_results, lambda {where ("physician_phone_number LIKE '775'")}

	has_many :specimens
	belongs_to :hospital
	has_many :patients
	has_many :limits
end