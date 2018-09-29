class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :licensePlate
      t.decimal :mileage
      t.string :status
      t.decimal :price

      t.timestamps
    end
  end
end
