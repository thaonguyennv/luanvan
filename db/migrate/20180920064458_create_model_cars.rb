class CreateModelCars < ActiveRecord::Migration[5.2]
  def change
    create_table :model_cars do |t|
      t.string :model
      t.integer :no_seat
      t.decimal :factory_price

      t.timestamps
    end
  end
end
