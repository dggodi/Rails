class Analyte < ApplicationRecord
  has_many :results
  has_many :limit_analyts
end
