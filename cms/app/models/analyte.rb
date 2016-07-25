class Analyte < ApplicationRecord
  has_many :results
  has_many :limits
end
