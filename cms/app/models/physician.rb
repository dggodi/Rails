class Physician < ApplicationRecord
 
	def result_analytes
		Analyte.joins(:results).where(:created_at => ("2014-01-01".to_date).. ("2014-03-31".to_date))
	end
	
	def reno_results
		where ("physician_phone_number LIKE '775'")
	end
	
	## lambda methods ##
	## scope :result_analytes, lambda {Analyte.joins(:results).where(:created_at => ("2014-01-01".to_date).. ("2014-03-31".to_date))}
	## scope :reno_results, lambda {where ("physician_phone_number LIKE '775'")}

	has_many :specimens
	belongs_to :hospital
	has_many :patients
	has_many :limit_analyts
end
