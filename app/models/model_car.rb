class ModelCar < ApplicationRecord
  belongs_to :brand
  has_many :car
  validate :model, :no_seat, :factory_price
end
