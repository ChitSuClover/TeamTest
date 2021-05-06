class Station < ApplicationRecord
  belongs_to :house, dependent: :destroy
end
