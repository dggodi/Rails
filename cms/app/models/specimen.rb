class Specimen < ApplicationRecord
  belongs_to :physician
  has_many :results
end
