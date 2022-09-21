class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.text :description

      t.timestamps
    end
  end
end
