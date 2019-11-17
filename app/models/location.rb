class Location < ApplicationRecord
  has_many :tanks
  has_many :sensors
end
