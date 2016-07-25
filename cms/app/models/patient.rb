class Patient < ApplicationRecord
  belongs_to :physician
  has_many :specimens
end
