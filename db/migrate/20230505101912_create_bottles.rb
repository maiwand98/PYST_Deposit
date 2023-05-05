class CreateBottles < ActiveRecord::Migration[7.0]
  def change
    create_table :bottles do |t|
      t.text :offer_description
      t.string :bottle_type
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.references :time_availability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
