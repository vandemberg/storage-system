class CreateDeliveryActions < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_actions do |t|
      t.references :car, null: false, foreign_key: true
      t.references :delivery, null: false, foreign_key: true
      t.datetime :delivery_at
      t.datetime :estimated_at
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
