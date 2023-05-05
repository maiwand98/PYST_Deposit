class CreateTimeAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :time_availabilities do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
