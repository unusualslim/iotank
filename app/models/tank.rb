class Tank < ApplicationRecord
  belongs_to :location

  has_one :product
end
