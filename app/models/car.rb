class Car < ApplicationRecord
      belongs_to :model_car
      validate :licensePlate, :mileage, :status, :price
end
