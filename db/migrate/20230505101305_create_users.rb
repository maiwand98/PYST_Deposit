class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :bottle
      t.string :first_name
      t.string :last_name
      t.string :zipcode
      t.string :img_url
      t.string :email

      t.timestamps
    end
  end
end
